json.array!(@places) do |place|
  json.extract! place, :latitude, :longitude, :description
  json.url place_url(place, format: :json)
end
