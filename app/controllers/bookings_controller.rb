class BookingsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:show ]

   def show
    @artwork = Artwork.find(params[:artwork_id])
    @bookings = Booking.find(params[:id])
   end 
end
