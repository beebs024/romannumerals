require 'rspec'
require_relative 'RomanNumeral.rb'
describe 'roman numeral test' do
	it "should not accept over 3000" do
		numeral = RomanNumeral.new(3001)
		numeral.is_valid.should==false
	end
	
	it "should not accept 0 or lower" do
		numeral = RomanNumeral.new(0)
		numeral.is_valid.should==false
	end
	
	[
      [ 1, "I" ],
      [ 2, "II" ],
      [ 3, "III" ],
      [ 4, "IV" ],
      [ 5, "V" ],
      [ 10, "X" ],
      [ 20, "XX" ],
      [ 40, "XL"],
      [ 50, "L" ],
	  [ 2012, "MMXII" ],
      [ 2018, "MMXVIII"],
      [ 2999, "MMCMXCIX"]
	].each do |numeric_pair|
		it "#{numeric_pair[0]} should return #{numeric_pair[1]}" do
			numeral = RomanNumeral.new(numeric_pair[0])
			numeral.toRomanNumeral.should == numeric_pair[1]
		end
	end
end