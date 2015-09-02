# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "json"

# Seed lines go here

legislators_hash = parsed("https://api.iga.in.gov/2014/chambers/house/legislators")



# Takes an endpoint and spits out Hash with symbols
def parsed(end_point)

  res = hparty(end_point)
  parsed = parse_me(res).symbolize_keys

end

# Makes API call to IGA website for JSON data
def hparty(end_point)

  HTTParty.get(end_point,
    :headers => {"Accept" => "application/vnd.myiga.v1+json",
    "Authorization" => ENV[iga_token]},
    :verify => false)

end

# Turns JSON response into hashes
def parse_me(json_obj)

  JSON.parse(json_obj)

end
