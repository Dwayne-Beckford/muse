#app/controllers/bookings_controller.rb
# [...]
class BookingsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:show ]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save # Will raise ActiveModel::ForbiddenAttributesError
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
