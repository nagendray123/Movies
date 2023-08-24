class BookingsController < ApplicationController

  def index
    if current_user.has_role?(:admin)
      @bookings = Booking.all
     else
       @bookings = current_user.bookings
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize! :read , @booking
  end

  def new 
    @booking = Booking.new
    @theater = Theater.find_by(id: params[:theater_id])
    @theater_theater_name = params[:theater_theater_name]
    @booking = current_user.bookings.new(user_id: params[:current_user])
     
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save

      # NotificationMailer.create_notification(@booking).deliver_now
      
      SendingEmailJob.set(wait: 5.seconds).perform_later(@booking)
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end  	
  end

  def edit
    @booking = Booking.find(params[:id])
    @theater_id = @booking.theater_id
    # @movie_id = @booking.movie_id
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
    redirect_to @booking
    else
    render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  	@booking = Booking.find(params[:id])
  	@booking.destroy

     NotificationMailer.destroy_notification(@booking).deliver_now
     
  	redirect_to @booking, status: :see_other
  end

  private
  def booking_params
  	params.require(:booking).permit(:theater_name, :howmany_seats, :date, :time, :select_seats, :theater_id, :user_id)
  end
end
