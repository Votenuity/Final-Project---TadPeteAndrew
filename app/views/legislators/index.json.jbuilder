json.array!(@legislators) do |legislator|
  json.extract! legislator, :id, :position_title, :firstName, :lastName, :party, :link, :fullName
  json.url legislator_url(legislator, format: :json)
end
