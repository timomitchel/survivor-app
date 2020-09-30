desc 'create weeks for 2020 season'

task :create_current_weeks_2020 do
  20.times do |index|
    Week.create!(season_id: 1, start_time: @start_time, end_time: @end_time, number: index + 1)
    @start_time = @start_time + 7.days
    @end_time = @end_time + 7.days
  end
end
