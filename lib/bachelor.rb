def get_first_name_of_season_winner(data, season)
  data[season][0]["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  result = ""
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash.values.include?(occupation)
        result = hash["name"]
      end
    end
  end
  result
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash.values.include?(hometown)
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # result = ""
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash.values.include?(hometown)
        return hash["occupation"]
      end
    end
  end
  # result
end

def get_average_age_for_season(data, season)
  sum = 0
  counter = 0
  data[season].each do |hash|
    sum += (hash["age"].to_f)
    counter += 1
  end
  (sum / counter).round
end
