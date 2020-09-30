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

  def current_week
    Week.where('start_time < ? AND end_time > ?', Date.today, Date.today)
        .first
        .number
  end

  def current_week_id
    Week.where('start_time < ? AND end_time > ?', Date.today, Date.today)
        .first
        .id
  end

  def current_season
    Season.all.first.id
  end

  def current_pick
    if  find_current_pick
      Team.find(find_current_pick.team_id).abbreviation
    else
      "No team picked yet"
    end
  end
end
