require 'pry'
module ApplicationHelper
    def find_current_pick
      @pick ||= UserTeam.find_by(user_id: current_user.id, week_id: current_week_id)
    end
end
