require('rspec')
require('coin_combo')
require('pry')

describe("#coin_combo") do
  it("gives back a quarter if 25 cents is the change") do
    change = Change.new()
    expect(change.coins_back(25)).to(eq("1 Quarters, 0 Dimes, 0 Nickels, 0 Pennies"))
  end
  it("gives back two quarters if 50 cents is the change") do
    change = Change.new()
    expect(change.coins_back(50)).to(eq("2 Quarters, 0 Dimes, 0 Nickels, 0 Pennies"))
  end
  it("gives back one quarter and a nickel if 30 cents is the change") do
    change = Change.new()
    expect(change.coins_back(30)).to(eq("1 Quarters, 0 Dimes, 1 Nickels, 0 Pennies"))
  end
  it("gives back one quarter and a nickel if 30 cents is the change") do
    change = Change.new()
    expect(change.coins_back(30)).to(eq("1 Quarters, 0 Dimes, 1 Nickels, 0 Pennies"))
  end
  it("gives back one quarter, one dime and a nickel if 40 cents is the change") do
    change = Change.new()
    expect(change.coins_back(40)).to(eq("1 Quarters, 1 Dimes, 1 Nickels, 0 Pennies"))
  end
  it("gives back one quarters and a nickel if 41 cents is the change") do
    change = Change.new()
    expect(change.coins_back(41)).to(eq("1 Quarters, 1 Dimes, 1 Nickels, 1 Pennies"))
  end
end
