class FlightsController < ApplicationController
  def index
    if search_parms
      @flights = Flight.where(:departure_id=>params[:departure], :arrival_id=>params[:arrival])
    end
  end

  private
    def search_parms
      params.permit(:departure, :arrival, :passengers, :date)
    end
end
