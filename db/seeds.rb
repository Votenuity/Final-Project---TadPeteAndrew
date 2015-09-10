require "json"

# Takes an endpoint and spits out Hash with symbols all the way through
def parsed(end_point)
  response = hparty(end_point)
  parsed = parse_me(response).deep_symbolize_keys
end

# Makes API call to IGA website for JSON data
def hparty(end_point)

  HTTParty.get(end_point,
    :headers => {"Accept" => "application/vnd.myiga.v1+json",
    "Authorization" => ENV["iga_token"]},
    :verify => false)

end

# Turns JSON response into hashes all the way through
def parse_me(json_obj)
  begin
    puts json_obj.inspect
    JSON.parse(json_obj)
  rescue JSON::ParserError, TypeError => e
    []
  end
end

# This group gets the URL for the picture of the Legislator

def remove_front_of_url(link)

  link.slice!(0..17)
  link

end

def leg_pic_actual_url(session, link)

  "iga.in.gov/legislative/#{session}/portraits/legislator_#{remove_front_of_url(link)}"

end

# This will create the Legislators and place them in the database

def leg_grab(session)

  # Grabs JSON from API, using only endpoint, parses in to array of hashes
  leg_hash = parsed("https://api.iga.in.gov/#{session}/legislators?per_page=160")


  # Assigns each house member to a spot in the database
  leg_hash[:items].each do |house|

    next if house[:link] == "/2014/legislators/timothy_harman_1112"
    next if house[:link] == "/2013/legislators/vanessa_summers_231"
    next if house[:link] == "/2013/legislators/greg_taylor_976"

    leg_hash_detail = parsed("https://api.iga.in.gov#{house[:link]}")

    house_hash_detail_bills = parsed("https://api.iga.in.gov#{leg_hash_detail[:bills][:link]}")

    house_hash_detail_bills_authored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:authored][:link]}")
    house_hash_detail_bills_co_authored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:coauthored][:link]}")
    house_hash_detail_bills_sponsored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:sponsored][:link]}")
    house_hash_detail_bills_co_sponsored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:cosponsored][:link]}")

    Legislator.create(session: session,
                      position_title: house[:position_title],
                      firstName: house[:firstName],
                      lastName: house[:lastName],
                      party: house[:party],
                      link: house[:link],
                      fullName: house[:fullName],
                      chamber: leg_hash_detail[:chamber][:name],
                      committees: leg_hash_detail[:committees],
                      bill_authored: house_hash_detail_bills_authored[:items],
                      bill_co_authored: house_hash_detail_bills_co_authored[:items],
                      bill_sponsored: house_hash_detail_bills_sponsored[:items],
                      bill_co_sponsored: house_hash_detail_bills_co_sponsored[:items],
                      leg_pic_url: leg_pic_actual_url(session, house[:link])
                      )


  end

end

session = 2015
leg_grab(session)
