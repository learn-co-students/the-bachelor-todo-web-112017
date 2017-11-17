require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each {
    |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
    }
end

def get_contestant_name(data, occupation)
  data.each {
    |season, contestant_hash|
      contestant_hash.each {
        |contestant|
        if contestant["occupation"] == occupation
          return contestant["name"]
        end
      }
  }
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each {
    |season, contestant_hash|
      contestant_hash.each {
        |contestant|
        if contestant["hometown"] == hometown
          count += 1
        end
      }
  }
  return count
end

def get_occupation(data, hometown)
  data.each {
    |season, contestant_hash|
      contestant_hash.each {
        |contestant|
        if contestant["hometown"] == hometown
          return contestant["occupation"]
        end
      }
  }
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each {
    |contestant|
    age_array.push(contestant["age"].to_f)
  }
  (age_array.reduce(:+)/age_array.size).round
end
