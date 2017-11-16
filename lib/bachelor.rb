require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each_with_index do |slot, index| #{"name" => "Ashley Iaconetti", etc}, 0
    slot.each do |key, value| #"name", "Ashley Iaconetti"
      if value == "Winner"
        name = data[season][index]["name"]
        return name.split()[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array_h| #"season 19", array with hashes contianing contestants
    array_h.each_with_index do |slot, index| #{"name" => "Ashley Iaconetti", etc}, 0
      slot.each do |key, value| #"name", "Ashley Iaconetti"
        return data[season][index]["name"] if value == occupation
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season, array_h| #"season 19", array with hashes contianing contestants
    array_h.each_with_index do |slot, index| #{"name" => "Ashley Iaconetti", etc}, 0
      slot.each do |key, value| #"name", "Ashley Iaconetti"
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, array_h| #"season 19", array with hashes contianing contestants
    array_h.each_with_index do |slot, index| #{"name" => "Ashley Iaconetti", etc}, 0
      slot.each do |key, value| #"name", "Ashley Iaconetti"
        return data[season][index]["occupation"] if value == hometown
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []

  data[season].each_with_index do |slot,index| #{"name" => "Ashley Iaconetti", etc}, 0
    slot.each do |key, value| #"name", "Ashley Iaconetti"
      ages << data[season][index]["age"].to_i
    end
  end

  (ages.reduce{|sum, i| sum + i}.to_f / ages.size).round
end
