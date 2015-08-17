require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |k, v|
    if k["status"] == "Winner"
     return k["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |k|
      if k["occupation"] == occupation
        return k["name"]
      end
    end
  end
end
require 'pry'
def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each {|h| count += 1 if h["hometown"] == hometown}
  #   contestants.each do |h|
  #     if hometown == h["hometown"]
  #       count += 1
  #     end
  #   end
  # end
  #  count
end
  count
end

def get_occupation(data, hometown)
   data.each do |season, contestants|
     contestants.each {|h| return h["occupation"] if h["hometown"] == hometown}
   end
end

def get_average_age_for_season(data, season)
  ages = []
  average = 0
  data[season].each do |contestants|
      ages << contestants["age"].to_i
  average = ages.inject {|sum, element| sum + element}.to_f/ages.size
end
average.round
  # data[season]
  # binding.pry
  # data[season].each {|contestants| ages << contestants["age"].to_i}
end
