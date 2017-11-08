def get_first_name_of_season_winner(data, season)
  data[season].each do |i|
    if i["status"] == "Winner"
      name = i["name"].split(" ")
      return name[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, i|
    i.each do |v|
      if occupation == v["occupation"]
        return v["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  h_town = 0
  data.each do |season, i|
    i.each do |v|
      if hometown == v["hometown"]
        h_town += 1
      end
    end
  end
  return h_town
end

def get_occupation(data, hometown)
  data.each do |season, i|
    i.each do |v|
      if hometown == v["hometown"]
        return v["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |k, v|
    ages << k["age"].to_f
  end
  return (ages.inject(&:+) / ages.size).round
end
