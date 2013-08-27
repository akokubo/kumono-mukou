module PlacesHelper
  def place_image_tag(place, options = {})
    if place.photo.present?
      path = place_path(place, format: place.photo.extension)
      link_to(image_tag(path, { alt: place.description }.merge(options)), path)
    else
      ""
    end
  end
end
