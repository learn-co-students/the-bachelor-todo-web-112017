require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].first["name"].split(' ').first
end

def get_contestant_name(data, occupation)
  answer = ""
  data.each do |key, value|
    value.each {|k|
      if k["occupation"] == occupation
        answer = k["name"]
      end
    }
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |key, val|
    val.each do |k|
      if k["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  answer = ""
  data.each do |k, v| #v is an array of objects
     v.each do |obj|
      if obj["hometown"] == hometown && answer == ""
        answer = obj["occupation"]
      end
    end
  end
answer
end

def get_average_age_for_season(data, season)
  data_spec = data.select { |e| e == season }
  total = 0
  count = 0
  data_spec.each do |k, v|
    v.each {|e|
      #puts e["age"]
      total += e["age"].to_i
      count += 1
    }
  end
  puts total
  puts count
  return (total.to_f/count.to_f).round
end
