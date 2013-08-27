class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    if params[:format].in?(["jpg", "png", "gif"])
      send_image
    else
      render "show"
    end
  end

  private
    def send_image
      if @place.photo.present?
        send_data @place.photo.data,
          type: @place.photo.content_type,
          disposition: "inline"
      else
        raise NotFound
      end
    end
end
