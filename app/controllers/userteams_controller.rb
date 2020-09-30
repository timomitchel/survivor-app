class UserteamsController < ApplicationController
  def create
    team = Team.find_by(abbreviation: params[:abbrev])
    UserTeam.create!(team_id: team.id, week_id: current_week_id, user_id: current_user.id)
    redirect_to user_path(current_user)
  end
end
