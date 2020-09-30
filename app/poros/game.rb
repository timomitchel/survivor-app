class Game

  attr_reader :date,
              :away_team,
              :away_score,
              :home_team,
              :home_score,
              :spread,
              :over_under,
              :stadium,
              :stadium_loaction,
              :forecast

  def initialize(attributes)
    @date = attributes[:Date]
    @away_team = attributes[:AwayTeam]
    @away_score = attributes[:AwayScore]
    @home_team = attributes[:HomeTeam]
    @home_score = attributes[:AwayScore]
    @spread = attributes[:PointSpread]
    @over_under = attributes[:OverUnder]
    @forecast = attributes[:ForecastDescription]
    @stadium_loaction = attributes[:StadiumDetails][:City] + ", " + attributes[:StadiumDetails][:State]
    @stadium = attributes[:StadiumDetails][:Name]
  end
end
