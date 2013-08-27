json.extract! @place, :description
json.extract! @place, :latitude if @place.latitude
json.extract! @place, :longitude if @place.longitude
json.photo_url place_url(@place, format: @place.photo.extension) if @place.photo
