require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_key, season_hash|
    if season_key.to_s == season
      season_hash.each do |bach_data|
        if bach_data["status"] == 'Winner'
          return bach_data["name"].split(" ")[0]
        end
      end
    end
  end

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_key, season_hash|
    season_hash.each do |bach_data|
      if bach_data["occupation"] == occupation
        return bach_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_key, season_hash|
    season_hash.each do |bach_data|
      if bach_data["hometown"] == hometown
        count +=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_key, season_hash|
    season_hash.each do |bach_data|
      if bach_data["hometown"] == hometown
        return bach_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |season_key, season_hash|
    if season_key.to_s == season
      season_hash.each do |bach_data|
        ages << bach_data['age'].to_f
      end
    end
  end
  (ages.reduce(:+)/ages.size).round
end
