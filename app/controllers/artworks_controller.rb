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
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork), status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
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
