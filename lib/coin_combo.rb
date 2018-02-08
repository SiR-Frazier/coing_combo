class Change
  def initialize
    @quarters = 0
  end

  def coins_back(input)
    until input == 0
      if input >= 25
        @quarters += 1
        input = input - 25
      end
    end
    "#{@quarters} Quarters"
  end
end
