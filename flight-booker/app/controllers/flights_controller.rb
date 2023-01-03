class FlightsController < ApplicationController
  def index
    @flights = Flight.where(:departure_id=>params[:departure], :arrival_id=>params[:arrival])
    if @flights
      @tickets = params[:passengers]
    end
  end

end
