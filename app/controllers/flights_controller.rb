class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.order(:code).map { |airport| [airport.code, airport.id] }

    @search_results = search_flights(flight_search_params)
  end

  private

  def flight_search_params
    params.permit(:departure_airport_id, :arrival_airport_id, :departure_date, :passenger_count, :commit)
  end

  def search_flights(params)
    flights = Flight.all

    flights = flights.where(departure_airport_id: params[:departure_airport_id])
    flights = flights.where(arrival_airport_id: params[:arrival_airport_id])
    flights.order(:date)
  end
end