require "pry"

def get_first_name_of_season_winner(data, season)
  win_name = ""
  data[season].each do |element|
    if element["status"] == "Winner"
      win_name = element["name"]
    end
  end
  win_array = win_name.split(" ")
  win_array[0]
end

def get_contestant_name(data, job)
  con_name = ""
  data.each do |season, contestant|
    contestant.each do |element|
      if element["occupation"] == job
        con_name = element["name"]
      end
    end
  end
  con_name
end

def count_contestants_by_hometown(data, town)
  location_count = 0
  data.each do |season, contestant|
    contestant.each do |element|
      if element["hometown"] == town
        location_count += 1
      end
    end
  end
  location_count
end

def get_occupation(data, town)
  con_occ = ""
  data.each do |season, contestant|
    contestant.each do |element|
      if element["hometown"] == town
        con_occ = element["occupation"]
        return con_occ
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |element|
    age_num = element["age"].to_i
    age_array.push(age_num)
  end
  age_sum = 0
  age_array.each do |age|
    age_sum += age
  end
  age_avg = (age_sum.to_f / age_array.length.to_f).round
end
