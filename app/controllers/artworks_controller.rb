# app/controllers/artworks_controller.rb
#[...]
class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new # Needed to instantiate simple_form
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.save  #Will raise ActiveModel::ForbiddenAttributesError
    # No need for app/views/artworks/create.html.erb
    redirect_to artwork_path(@artwork)
  end

  def show
    @artwork = Artwork.find(params[:id])
    @booking = Booking.new
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :description, :location, :price)
  end
end
