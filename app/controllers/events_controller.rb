class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to action: "index"
  end

  def event_params
    params.require(:event).permit(:date, :description, :wines_number)
  end
end
