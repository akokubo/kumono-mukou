class Photo < ActiveRecord::Base
  belongs_to :place

  IMAGE_TYPES = {
    "image/jpeg" => "jpg",
    "image/gif" => "gif",
    "image/png" => "png"
  }

  def extension
    IMAGE_TYPES[content_type]
  end
end
