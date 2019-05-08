require "pry"

def get_first_name_of_season_winner(data, season)
  season_array = data[season]
    season_array.each do |people|
      people.each do |data, details|
        if details == "Winner"
          return first_name = people["name"].split(" ")[0]
        end
      end
    end
  end

def get_contestant_name(data, occupation)
  data.each do |season, season_array|
    season_array.each do |people|
    if people.fetch("occupation") == occupation
      return people["name"]
    end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, season_array|
    season_array.each do |people|
      if people.fetch("hometown") == hometown
        hometown_counter +=1
      end
    end
  end
  return hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season, season_array|
    season_array.each do |people|
      if people.fetch("hometown") == hometown
        return people["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  season_array = data[season]
  age_total = 0.0
  people_total = 0.0
    season_array.each do |people|
      ages = people.fetch("age").to_f
      age_total += ages
      people_total +=1
    end
    average = age_total / people_total
    return average.round
end
