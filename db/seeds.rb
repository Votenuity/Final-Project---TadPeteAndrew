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

  JSON.parse(json_obj)

end

# Makes API call to IGA website for JSON data of picture
def pichparty(end_point)

  HTTParty.get(end_point,
    :headers => {"Accept" => "image/png",
    "Authorization" => ENV["iga_token"]},
    :verify => false)

end

# Turns hash of committees into an array of the hash values
def igahashcommittees2array(hash)
  hash.values.to_a
end

# Turns hash of bills into an array of the hash values
def igahashbills2array(hash)
  hash.values.to_a
end


# Grabs JSON from API, using only endpoint, parses in to array of hashes
house_hash = parsed("https://api.iga.in.gov/2014/chambers/house/legislators?per_page=102")
senate_hash = parsed("https://api.iga.in.gov/2014/chambers/senate/legislators?per_page=50")

# Seed lines go here


# Assigns each house member to a spot in the database
house_hash[:items].each do |house|

  house_hash_detail = parsed("https://api.iga.in.gov#{house[:link]}")

  house_hash_detail_bills = parsed("https://api.iga.in.gov" + house_hash_detail[:bills].to_s)

  house_hash_detail_bills_authored = parsed("https://api.iga.in.gov" + house_hash_detail_bills[:authored].to_s)
  house_hash_detail_bills_co_authored = parsed("https://api.iga.in.gov" + house_hash_detail_bills[:coauthored].to_s)
  house_hash_detail_bills_sponsored = parsed("https://api.iga.in.gov" + house_hash_detail_bills[:sponsored].to_s)
  house_hash_detail_bills_co_sponsored = parsed("https://api.iga.in.gov" + house_hash_detail_bills[:cosponsored].to_s)

  house_hash_detail_bills_all = house_hash_detail_bills_co_authored[:items].merge(house_hash_detail_bills_co_authored[:items]).merge(house_hash_detail_bills_sponsored[:items]).merge(house_hash_detail_bills_co_sponsored[:items])

  Legislator.create(position_title: house[:position_title],
                    firstName: house[:firstName],
                    lastName: house[:lastName],
                    party: house[:party],
                    link: house[:link],
                    fullName: house[:fullName],
                    chamber: house_hash_detail[:chamber][:name],
                    committees: igahashcommittees2array(house_hash_detail[:committees][:name]),
                    bills: igahashbills2array(house_hash_detail_bills_all[:billName])
                    )

end

# Assigns each senate member to a spot in the database
senate_hash[:items].each do |senate|

  senate_hash_detail = parsed("https://api.iga.in.gov" + senate[:link].to_s)

  senate_hash_detail_bills = parsed("https://api.iga.in.gov" + senate_hash_detail[:bills].to_s)

  senate_hash_detail_bills_authored = parsed("https://api.iga.in.gov" + senate_hash_detail_bills[:authored].to_s)
  senate_hash_detail_bills_co_authored = parsed("https://api.iga.in.gov" + senate_hash_detail_bills[:coauthored].to_s)
  senate_hash_detail_bills_sponsored = parsed("https://api.iga.in.gov" + senate_hash_detail_bills[:sponsored].to_s)
  senate_hash_detail_bills_co_sponsored = parsed("https://api.iga.in.gov" + senate_hash_detail_bills[:cosponsored].to_s)

  senate_hash_detail_bills_all = senate_hash_detail_bills_co_authored[:items].merge(senate_hash_detail_bills_co_authored[:items]).merge(senate_hash_detail_bills_sponsored[:items]).merge(senate_hash_detail_bills_co_sponsored[:items])

  Legislator.create(position_title: senate[:position_title],
                    firstName: senate[:firstName],
                    lastName: senate[:lastName],
                    party: senate[:party],
                    link: senate[:link],
                    fullName: senate[:fullName],
                    chamber: senate_hash_detail[:chamber][:name],
                    committees: igahashcommittees2array(senate_hash_detail[:committees][:name]),
                    bills: igahashbills2array(senate_hash_detail_bills_all[:billName])
                    )

end
