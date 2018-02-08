class Change
  def initialize
    @quarters = 0
    @nickels = 0
  end

  def coins_back(input)
    until input <= 0
      if input >= 25
        @quarters += 1
        input = input - 25
       elsif input >= 5
        @nickels =+ 1
        input = input - 5
      end
    end
    "#{@quarters} Quarters, #{@nickels} Nickels"
  end
end
