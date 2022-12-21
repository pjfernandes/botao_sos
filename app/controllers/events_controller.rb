class EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def get_events
    @events = Event.all
    render json: @events
  end

  private
  def event_params
    params.require(:event).permit(:ts, :iduff, :latitude, :longitude, :altitude, :accuracy, :speed, :speed_accuracy, :heading)
  end

end
