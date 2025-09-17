class CrgEventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @crg_events = CrgEvent.all
  end

  def show
    @crg_event = CrgEvent.find(params[:id])
  end

  def join
    @crg_event = CrgEvent.find(params[:id])
    unless current_user.crg_events.include?(@crg_event)
      current_user.crg_events << @crg_event
      flash[:notice] = "You joined #{@crg_event.name}!"
    else
      flash[:alert] = "You are already joined."
    end
    redirect_to crg_events_path
  end

 def admin_dashboard
    @crg_event = CrgEvent.find(params[:id])

    # Count climbs per user and order descending
    @user_stats = @crg_event.users
                            .select("users.*, COUNT(climbs.id) AS total_ascents")
                            .joins(:climbs)
                            .where(climbs: { crg_event_id: @crg_event.id })
                            .group("users.id")
                            .order("total_ascents DESC")
  end

end