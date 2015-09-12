json.array!(@cills) do |cill|
  json.extract! cill, :id
  json.url cill_url(cill, format: :json)
end
