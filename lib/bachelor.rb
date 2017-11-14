#require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |number, attributes|
    attributes.each do |description|
      description.each do |characteristic, value|
        if number == season && value == "Winner"
          return description["name"].split(" ").first
        end
    end
   end
  end
 end

def get_contestant_name(data, occupation)
  data.each do |number, attributes|
    attributes.each do |description|
      description.each do |characteristic, value|
        if value == occupation
          return description["name"]
        end
    end
   end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |number, attributes|
    attributes.each do |description|
      description.each do |characteristic, value|
        if value == hometown
          counter += 1
        end
    end
   end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |number, attributes|
    attributes.each do |description|
      description.each do |characteristic, value|
        if value == hometown
          return description["occupation"]
        end
    end
   end
  end
end

# def get_average_age_for_season(data, season)
#   average = []
#   data.each do |number, attributes|
#     attributes.each do |description|
#       description.each do |characteristic, value|
#         if number == season
#           average << description["age"].to_i
#         end
#     end
#    end
#   end
#   sum = 0
#   average.each do |num|
#     sum += num
#  end
#  sum.to_f.ceil / average.size
# end

# def get_average_age_for_season(data, season)
#   age_total = 0
#   num_of_contestants = 0
#   data.each do |number, attributes|
#       attributes.each do |description|
#           age_total += (description["age"]).to_i
#           num_of_contestants += 1
#      end
#     end
#   (age_total / num_of_contestants.to_f).round(0)
# end

def get_average_age_for_season(data, season)
  age_total = 0
  num_of_contestants = 0
  data[season].each do |description|
    age_total += (description["age"]).to_i
    num_of_contestants += 1
  end
  (age_total / num_of_contestants.to_f).round(0)
end
