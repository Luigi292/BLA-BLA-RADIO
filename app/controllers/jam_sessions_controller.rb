class JamSessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_jam_session, only: [:show, :edit, :update, :destroy, :apply]

  def index
    @jam_sessions = JamSession.all
  end

  def show
    @participants = @jam_session.participants
    @applied = current_user.applied_jam_sessions.exists?(id: @jam_session.id)
  end

  def new
    @jam_session = JamSession.new
  end

  def create
    @jam_session = current_user.jam_sessions.build(jam_session_params)

    if @jam_session.save
      redirect_to @jam_session, notice: 'Jam session was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @jam_session.update(jam_session_params)
      redirect_to @jam_session, notice: 'Jam session was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @jam_session.destroy
    redirect_to jam_sessions_url, notice: 'Jam session was successfully destroyed.'
  end

  def apply
    if @jam_session.available_space?
      current_user.applied_jam_sessions.create(jam_session: @jam_session)
      redirect_to @jam_session, notice: 'Successfully applied to join the jam session.'
    else
      redirect_to @jam_session, alert: 'No available space in this jam session.'
    end
  end

  private

  def set_jam_session
    @jam_session = JamSession.find(params[:id])
  end

  def jam_session_params
    params.require(:jam_session).permit(:location, :date, :time, :genre, :description, :creator_id, :participants_needed)
  end
end
