module ApplicationHelper

    def find_current_pick
      @pick ||= UserTeam.find_by(user_id: current_user.id, week_id: current_week_id)
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
