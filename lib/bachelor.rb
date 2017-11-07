def get_first_name_of_season_winner(data, season)
data[season].each do |contestant|
  if contestant["status"] == "Winner"
    return contestant["name"].split(" ").first
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |woman|
      if woman["occupation"] == occupation
        return woman["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |seasons, contestants|
    contestants.each do |woman|
      if woman["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |woman|
      if woman["hometown"] == hometown
        return woman["occupation"]
      end
    end
  end
end




def get_average_age_for_season(data, season)
ages = 0
contestants = 0
data[season].each do |contestant|
  ages += contestant["age"].to_f
  contestants += 1
  end
average = (ages/contestants).round(0)
average
end
