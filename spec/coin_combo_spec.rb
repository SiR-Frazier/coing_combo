require('rspec')
require('coin_combo')
require('pry')

describe("#coin_combo") do
  it("gives back a quarter if 25 cents is the change") do
    change = Change.new()
    expect(change.coins_back(25)).to(eq("1 Quarters"))
  end
  it("gives back two quarters if 50 cents is the change") do
    change = Change.new()
    expect(change.coins_back(50)).to(eq("2 Quarters"))
  end
  
end
