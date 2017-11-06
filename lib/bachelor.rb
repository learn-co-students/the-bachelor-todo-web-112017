require "pry"

def get_first_name_of_season_winner(data, season)
  data.fetch(season).first {|c| c["status"] == "Winner"}["name"].split.first
end

def get_contestant_name(data, occupation)
  data.map do |season, cast|
      cast.map do |contestant|
        contestant["name"] if contestant["occupation"] == occupation
      end
  end.flatten.compact.first
end

def count_contestants_by_hometown(data, hometown)
  residents = 0
  data.each do |season, cast|
      cast.each do |contestant|
        residents += 1 if contestant["hometown"] == hometown
      end
  end
  residents
end

def get_occupation(data, hometown)
  data.each do |season, cast|
      cast.each do |contestant|
        return contestant["occupation"] if contestant["hometown"] == hometown
      end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  contestants = 0

  data.fetch(season).each do |contestant|
    age += contestant["age"].to_f
    contestants += 1
  end

  (age/contestants).round
end
