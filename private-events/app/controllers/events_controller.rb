class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    logger.info current_user.created_events
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to current_user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private
    def event_params
      params.require(:event).permit(:location, :date)
    end

end
