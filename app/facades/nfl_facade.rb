class NflFacade

  def self.games(week)
    season = "2020REG"

    conn = Faraday.new(url: "https://api.sportsdata.io/v3/nfl/scores/json/ScoresByWeek/") do |faraday|
      faraday.headers['Ocp-Apim-Subscription-Key'] = Figaro.env.sports_data_api_key
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("#{season}/#{week}")
    json = JSON.parse(response.body, symbolize_names: true)
    @games = json.map do |game_data|
      Game.new(game_data)
    end
  end
end
