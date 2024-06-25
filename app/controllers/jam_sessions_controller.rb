# app/controllers/jam_sessions_controller.rb

class JamSessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_jam_session, only: [:show, :edit, :update, :destroy, :apply]

  # GET /jam_sessions
  def index
    @jam_sessions = JamSession.all
    @created_jam_sessions = current_user.jam_sessions
    @applied_jam_sessions = current_user.applied_jam_sessions.includes(:jam_session)
  end

  # GET /jam_sessions/1
  def show
    @participants = @jam_session.participants
    @available_space = @jam_session.available_space?
  end

  # GET /jam_sessions/new
  def new
    @jam_session = JamSession.new
  end

  # POST /jam_sessions
  def create
    @jam_session = current_user.jam_sessions.build(jam_session_params)

    if @jam_session.save
      redirect_to @jam_session, notice: 'Jam session was successfully created.'
    else
      render :new
    end
  end

  # GET /jam_sessions/1/edit
  def edit
  end

  # PATCH/PUT /jam_sessions/1
  def update
    if @jam_session.update(jam_session_params)
      redirect_to @jam_session, notice: 'Jam session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /jam_sessions/1
  def destroy
    @jam_session.destroy
    redirect_to jam_sessions_url, notice: 'Jam session was successfully destroyed.'
  end

  # POST /jam_sessions/1/apply
  def apply
    if @jam_session.available_space?
      current_user.applied_jam_sessions.create(jam_session: @jam_session)
      redirect_to @jam_session, notice: 'Successfully applied to join the jam session.'
    else
      redirect_to @jam_session, alert: 'No available space in this jam session.'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_jam_session
    @jam_session = JamSession.find_by(id: params[:id])
    unless @jam_session
      redirect_to jam_sessions_path, alert: 'Jam session not found.'
    end
  end

  # Only allow a trusted parameter "white list" through.
  def jam_session_params
    params.require(:jam_session).permit(:title, :description, :location, :participants_needed, :instruments_available, :musical_genre, :time)
          .merge(creator_id: current_user.id)
  end
end
