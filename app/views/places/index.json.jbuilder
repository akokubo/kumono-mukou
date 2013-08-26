json.array!(@places) do |place|
  json.extract! place, :latitude, :longitude, :description, :id
  json.url place_url(place, format: :json)
end
