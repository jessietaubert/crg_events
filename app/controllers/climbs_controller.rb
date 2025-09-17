class ClimbsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event

  def create
    @climb = @event.climbs.new(climb_params)
    @climb.user = current_user

    if @climb.save
      redirect_to crg_event_path(@event), notice: "Climb logged successfully!"
    else
      redirect_to crg_event_path(@event), alert: @climb.errors.full_messages.join(", ")
    end
  end

  private

  def set_event
    @event = CrgEvent.find(params[:crg_event_id])
  end

  def climb_params
    params.require(:climb).permit(:station, :color, :grade, :modifier)
  end
end
