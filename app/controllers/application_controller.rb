class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include ApplicationHelper

  helper_method :current_user,
                :current_week,
                :current_season,
                :current_pick

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
