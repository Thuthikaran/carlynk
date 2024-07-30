# app/controllers/reservations_controller.rb
class ReservationsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @reservation = @car.reservations.build(reservation_params)
    
    if @reservation.save
      redirect_to @car, notice: 'Reservation was successfully created.'
    else
      redirect_to @car, alert: 'There was a problem with your reservation.'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
