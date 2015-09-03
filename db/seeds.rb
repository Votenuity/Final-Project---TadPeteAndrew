# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#this is for Pete
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


# Seed lines go here

# Grabs JSON from API, parses in to array of hashes
house_hash = parsed("https://api.iga.in.gov/2014/chambers/house/legislators?per_page=102")
senate_hash = parsed("https://api.iga.in.gov/2014/chambers/senate/legislators?per_page=50")


# Assigns each legislator member to a spot in the database
house_hash[:items].each do |house|

  Legislator.create(position_title: house["position_title"],
                    firstName: house["firstName"],
                    lastName: house["lastName"],
                    party: house["party"],
                    link: house["link"],
                    fullName: house["fullName"])

end

senate_hash[:items].each do |senate|

  Legislator.create(position_title: senate["position_title"],
                    firstName: senate["firstName"],
                    lastName: senate["lastName"],
                    party: senate["party"],
                    link: senate["link"],
                    fullName: senate["fullName"])

end
