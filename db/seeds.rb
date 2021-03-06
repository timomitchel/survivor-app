# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_weeks_2020
  @start_time = DateTime.parse('8-9-2020').beginning_of_day
  @end_time = Date.parse('14-9-2020').end_of_day
  20.times do |index|
    Week.create!(season_id: 1, start_time: @start_time, end_time: @end_time, number: index + 1)
    @start_time = @start_time + 7.days
    @end_time = @end_time + 7.days
  end
end

def nfl_team_data
  return [
    {
        "city": "Arizona",
        "name": "Cardinals",
        "abr": "ARI",
        "conf": "NFC",
        "div": "West"
    },
    {
        "city": "Atlanta",
        "name": "Falcons",
        "abr": "ATL",
        "conf": "NFC",
        "div": "South"
    },
    {
        "city": "Baltimore",
        "name": "Ravens",
        "abr": "BAL",
        "conf": "AFC",
        "div": "North"
    },
    {
        "city": "Buffalo",
        "name": "Bills",
        "abr": "BUF",
        "conf": "AFC",
        "div": "EAST"
    },
    {
        "city": "Carolina",
        "name": "Panthers",
        "abr": "CAR",
        "conf": "NFC",
        "div": "South"
    },
    {
        "city": "Cincinati",
        "name": "Bengals",
        "abr": "CIN",
        "conf": "AFC",
        "div": "North"
    },
    {
        "city": "Chicago",
        "name": "Bears",
        "abr": "CHI",
        "conf": "NFC",
        "div": "North"
    },
    {
        "city": "Cleveland",
        "name": "Browns",
        "abr": "CLE",
        "conf": "AFC",
        "div": "North"
    },
    {
        "city": "Dallas",
        "name": "Cowboys",
        "abr": "DAL",
        "conf": "NFC",
        "div": "East"
    },
    {
        "city": "Denver",
        "name": "Broncos",
        "abr": "DEN",
        "conf": "AFC",
        "div": "West"
    },
    {
        "city": "Detroit",
        "name": "Lions",
        "abr": "DET",
        "conf": "NFC",
        "div": "North"
    },
    {
        "city": "Green Bay",
        "name": "Packers",
        "abr": "GB",
        "conf": "NFC",
        "div": "North"
    },
    {
        "city": "Houston",
        "name": "Texans",
        "abr": "HOU",
        "conf": "AFC",
        "div": "South"
    },
    {
        "city": "Indianapolis",
        "name": "Colts",
        "abr": "IND",
        "conf": "AFC",
        "div": "South"
    },
    {
        "city": "Jacksonville",
        "name": "Jaquars",
        "abr": "JAX",
        "conf": "AFC",
        "div": "South"
    },
    {
        "city": "Kansas City",
        "name": "Chiefts",
        "abr": "KC",
        "conf": "AFC",
        "div": "West"
    },
    {
        "city": "Miami",
        "name": "Dolphins",
        "abr": "MIA",
        "conf": "AFC",
        "div": "East"
    },
    {
        "city": "Minnesota",
        "name": "Vikings",
        "abr": "MIN",
        "conf": "AFC",
        "div": "North"
    },
    {
        "city": "New England",
        "name": "Patriots",
        "abr": "NE",
        "conf": "AFC",
        "div": "East"
    },
    {
        "city": "New Orleans",
        "name": "Saints",
        "abr": "NO",
        "conf": "NFC",
        "div": "South"
    },
    {
        "city": "New York",
        "name": "Giants",
        "abr": "NYG",
        "conf": "NFC",
        "div": "East"
    },
    {
        "city": "New York",
        "name": "Jets",
        "abr": "NYJ",
        "conf": "AFC",
        "div": "East"
    },
    {
        "city": "Oakland",
        "name": "Raiders",
        "abr": "OAK",
        "conf": "AFC",
        "div": "West"
    },
    {
        "city": "Philidelphia",
        "name": "Eagles",
        "abr": "PHI",
        "conf": "NFC",
        "div": "East"
    },
    {
        "city": "Pittsburgh",
        "name": "Steelers",
        "abr": "PIT",
        "conf": "AFC",
        "div": "North"
    },
    {
        "city": "San Diego",
        "name": "Chargers",
        "abr": "SD",
        "conf": "AFC",
        "div": "West"
    },
    {
        "city": "Seattle",
        "name": "Seahawks",
        "abr": "SEA",
        "conf": "NFC",
        "div": "West"
    },
    {
        "city": "San Francisco",
        "name": "49ers",
        "abr": "SF",
        "conf": "NFC",
        "div": "West"
    },
    {
        "city": "St. Louis",
        "name": "Rams",
        "abr": "STL",
        "conf": "NFC",
        "div": "West"
    },
    {
        "city": "Tampa Bay",
        "name": "Buccaneers",
        "abr": "TB",
        "conf": "NFC",
        "div": "South"
    },
    {
        "city": "Tennessee",
        "name": "Titants",
        "abr": "TEN",
        "conf": "AFC",
        "div": "South"
    },
    {
        "city": "Washington",
        "name": "Redskins",
        "abr": "WAS",
        "conf": "NFC",
        "div": "East"
    }
  ]
end
Team.delete_all
  nfl_team_data.each do |team|
    Team.create(name: team[:name],
                available: true,
                city: team[:city],
                abbreviation: team[:abr],
                conference: team[:conf],
                division: team[:div])
  end

  create_weeks_2020
