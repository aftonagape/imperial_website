class EventsController < ApplicationController
  def index
    events = Event.all

    render locals: { events: events}
  end

  def show
    # FRIENDLY ID HOW WORK?
    events = Event.all
    event = events.friendly.find(params[:id])

    render locals: { event: event, events: events}
  end

  def new
  end

  def create
  end

  def destroy
  end
end
