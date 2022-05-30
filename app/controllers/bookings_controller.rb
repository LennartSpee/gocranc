class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def index
    @bookings = Booking.all
  end

  def create
    #@reviews = Review.new
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = Offer.find(params[:offer_id])
    if @booking.save
      flash[:notice] = "Booking successfully done"
      redirect_to offers_path(@offers)
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:notice] = "Booking successfully changed"
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to my_bookings_path(@offers)
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
