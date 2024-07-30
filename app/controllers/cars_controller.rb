class CarsController < ApplicationController
  def index 
    @cars = Car.all
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def show
    @car = Car.find(params[:id])
    @reservation = Reservation.new()
  end
end
