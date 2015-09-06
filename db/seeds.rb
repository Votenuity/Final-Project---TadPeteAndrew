# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "json"

# Takes an endpoint and spits out Hash with symbols
def parsed(end_point)

  response = hparty(end_point)
  parsed = parse_me(response).symbolize_keys

end

# Makes API call to IGA website for JSON data
def hparty(end_point)

  HTTParty.get(end_point,
    :headers => {"Accept" => "application/vnd.myiga.v1+json",
    "Authorization" => ENV["iga_token"]},
    :verify => false)

end

# Turns JSON response into hashes
def parse_me(json_obj)

  JSON.parse(json_obj)

end

# Makes API call to IGA website for JSON data picture
def pichparty(end_point)

  HTTParty.get(end_point,
    :headers => {"Accept" => "image/png",
    "Authorization" => ENV["iga_token"]},
    :verify => false)

end

def igahashcommittees2array(hash)

end

def igahashbills2array(hash)

end


# Grabs JSON from API, using only endpoint, parses in to array of hashes
house_hash = parsed("https://api.iga.in.gov/2014/chambers/house/legislators?per_page=102")
senate_hash = parsed("https://api.iga.in.gov/2014/chambers/senate/legislators?per_page=50")




# Seed lines go here


# Assigns each legislator member to a spot in the database
house_hash[:items].each do |house|

  house_hash_detail = parsed("https://api.iga.in.gov" + house["link"])

  house_hash_detail_bills_authored = parsed("https://api.iga.in.gov" + house_hash_detail["bills"]["authored"]["items"])
  house_hash_detail_bills_co_authored = parsed("https://api.iga.in.gov" + house_hash_detail["bills"]["coauthored"]["items"])
  house_hash_detail_bills_sponsored = parsed("https://api.iga.in.gov" + house_hash_detail["bills"]["sponsored"]["items"])
  house_hash_detail_bills_co_sponsored = parsed("https://api.iga.in.gov" + house_hash_detail["bills"]["cosponsored"]["items"])

  Legislator.create(position_title: house["position_title"],
                    firstName: house["firstName"],
                    lastName: house["lastName"],
                    party: house["party"],
                    link: house["link"],
                    fullName: house["fullName"],
                    chamber: house_hash_detail["chamber"]["name"],
                    committees: igahashcommittees2array(house_hash_detail["committees"])
                    bills: igahashbills2array(house_hash_detail_bills))

end

senate_hash[:items].each do |senate|

  Legislator.create(position_title: senate["position_title"],
                    firstName: senate["firstName"],
                    lastName: senate["lastName"],
                    party: senate["party"],
                    link: senate["link"],
                    fullName: senate["fullName"])

end
