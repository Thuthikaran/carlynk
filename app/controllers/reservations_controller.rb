# app/controllers/reservations_controller.rb
class ReservationsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.car = @car
    @reservation.user = current_user
    if @reservation.save
      redirect_to @car, notice: 'Reservation was successfully created.'
    else
      render :new, status: :unprocessable_entity, alert: 'Something went wrong'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
