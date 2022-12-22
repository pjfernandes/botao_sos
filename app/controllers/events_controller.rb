require 'net/http'
require 'net/https'

class EventsController < ApplicationController
  protect_from_forgery with: :null_session

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
      render json: {status: 'SUCCESS', message:'Saved event', data:@event}, status: :ok
    else
      render json: {status: 'ERROR', message:'Event not saved', data:@event.erros}, status: :unprocessable_entity
    end
  end

  def get_events
    @events = Event.all
    render json: @events
  end

  def post_event
    @event = Event.new(event_params)
    if @event.save
      render json: {status: 'SUCCESS', message:'Saved event', data:@event}, status: :ok
    else
      render json: {status: 'ERROR', message:'Event not saved', data:@event.erros}, status: :unprocessable_entity
    end
  end

  private
  def event_params
    params.require(:event).permit(:ts, :iduff, :latitude, :longitude, :altitude, :accuracy, :speed, :speed_accuracy, :heading)
  end

end
