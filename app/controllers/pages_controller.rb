class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user  # Assuming you're using Devise for authentication

    # Fetch all jam sessions in user's location
    @jam_sessions = JamSession.where(location: @user.location)
  end
end
