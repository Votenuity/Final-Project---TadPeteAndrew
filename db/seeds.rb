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
    JSON.parse(json_obj)
    puts json_obj.inspect
  rescue JSON::ParserError, TypeError => e
    []
  end
end

# Makes API call to IGA website for JSON data of picture
def pichparty(end_point)

  HTTParty.get(end_point,
    :headers => {"Accept" => "image/png",
    "Authorization" => ENV["iga_token"]},
    :verify => false)

end


# Grabs JSON from API, using only endpoint, parses in to array of hashes
house_hash = parsed("https://api.iga.in.gov/2014/chambers/house/legislators?per_page=102")
senate_hash = parsed("https://api.iga.in.gov/2014/chambers/senate/legislators?per_page=50")

# Seed lines go here


# Assigns each house member to a spot in the database
house_hash[:items].each do |house|

  house_hash_detail = parsed("https://api.iga.in.gov#{house[:link]}")

  house_hash_detail_bills = parsed("https://api.iga.in.gov#{house_hash_detail[:bills][:link]}")

  house_hash_detail_bills_authored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:authored][:link]}")
  house_hash_detail_bills_co_authored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:coauthored][:link]}")
  house_hash_detail_bills_sponsored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:sponsored][:link]}")
  house_hash_detail_bills_co_sponsored = parsed("https://api.iga.in.gov#{house_hash_detail_bills[:cosponsored][:link]}")

  Legislator.create(position_title: house[:position_title],
                    firstName: house[:firstName],
                    lastName: house[:lastName],
                    party: house[:party],
                    link: house[:link],
                    fullName: house[:fullName],
                    chamber: house_hash_detail[:chamber][:name],
                    committees: house_hash_detail[:committees],
                    bill: house_hash_detail_bills_authored[:items]
                    )

end

# Assigns each senate member to a spot in the database
senate_hash[:items].each do |senate|

  senate_hash_detail = parsed("https://api.iga.in.gov#{senate[:link]}")

  senate_hash_detail_bills = parsed("https://api.iga.in.gov#{senate_hash_detail[:bills][:link]}")

  senate_hash_detail_bills_authored = parsed("https://api.iga.in.gov#{senate_hash_detail_bills[:authored][:link]}")
  senate_hash_detail_bills_co_authored = parsed("https://api.iga.in.gov#{senate_hash_detail_bills[:coauthored][:link]}")
  senate_hash_detail_bills_sponsored = parsed("https://api.iga.in.gov#{senate_hash_detail_bills[:sponsored][:link]}")
  senate_hash_detail_bills_co_sponsored = parsed("https://api.iga.in.gov#{senate_hash_detail_bills[:cosponsored][:link]}")

  Legislator.create(position_title: senate[:position_title],
                    firstName: senate[:firstName],
                    lastName: senate[:lastName],
                    party: senate[:party],
                    link: senate[:link],
                    fullName: senate[:fullName],
                    chamber: senate_hash_detail[:chamber][:name],
                    committees: senate_hash_detail[:committees],
                    bill: senate_hash_detail_bills_authored[:items]
                    )

end
