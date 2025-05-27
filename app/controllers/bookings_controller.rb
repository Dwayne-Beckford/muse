#app/controllers/bookings_controller.rb
# [...]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.save # Will raise ActiveModel::ForbiddenAttributesError
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
