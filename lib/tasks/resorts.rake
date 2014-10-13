namespace :resorts do
  task update_snowfall: :environment do
    Resort.all.each(&:determine_daily_snowfall)
    Resort.all.each(&:determine_three_day_snowfall)
    Resort.all.each(&:determine_seven_day_snowfall)
  end
end
