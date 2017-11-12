
def get_first_name_of_season_winner(data, season)
    winner = data[season].find {|person| person["status"] == "Winner" }
    winner["name"].split.first
end


def get_contestant_name(data, occupation)
    data.each do |season, contestants|
        contestants.each do |person|
            if person["occupation"] == occupation
             return person["name"]
        end
       end
    end
end
    
    
def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
      contestants.each do |person|
          if person["hometown"] == hometown
              counter +=1
        end
          end
      end
      counter
end

def get_occupation(data, hometown)
    data.each do |season, contestants|
       contestants.each do |person|
           if person["hometown"] == hometown
           return person["occupation"]
        end
      end
   end
end

def get_average_age_for_season(data, season)
  total = 0
  data[season].each do |person|
      total += person["age"].to_f
      end
  (total / data[season].length).round
end
