#!/usr/bin/env ruby
class Change
  def initialize
    @coins = {"quarters" => 0, "dimes" => 0, "nickels" => 0, "pennies" => 0}

  end

  def coins_back(input)
    until input <= 0
      if input >= 25
        @coins["quarters"] += 1
        input -= 25
      elsif input >=10
        @coins["dimes"] += 1
        input -= 10
      elsif input >= 5
        @coins["nickels"] =+ 1
        input -=  5
      elsif input >= 1
        @coins["pennies"] =+ 1
        input -= 1
      end
    end

    @coins.each do |key, value|
      puts key + " ", value
    end

    "#{@coins['quarters']} Quarters, #{@coins['dimes']} Dimes, #{@coins['nickels']} Nickels, #{@coins['pennies']} Pennies"
  end
end

change = Change.new()
puts change.coins_back(25)
