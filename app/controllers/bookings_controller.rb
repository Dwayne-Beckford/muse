# app/controllers/bookings_controller.rb
# [...]
class BookingsController < ApplicationController
  before_action :set_artwork, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.artwork = @artwork
    @booking.user = current_user
    if @booking.save
      redirect_to @booking, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Artwork.find(params[:id])
    @booking.update(booking_params) # Will raise ActiveModel::ForbiddenAttributesError
    # No need for app/views/restaurants/update.html.erb
    redirect_to booking_path(@booking)
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:artwork_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
