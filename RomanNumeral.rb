class RomanNumeral

	NUMBERPAIRS = {
		1000 =>"M",
		900 => "CM",
		500 => "D",
		400 =>"CD",
		100 => "C",
		90 => "XC",
		50 => "L",
		40 => "XL",
		10 => "X",
		9 => "IX",
		5 => "V",
		4 => "IV",
		1 => "I",
	}

	def initialize(numeric)
		@value = numeric
	end
	
	def is_valid
		if @value >0 && @value <3001
			return true
		else
			return false
		end
	end
	
	def toRomanNumeral
		outcome = ""
		NUMBERPAIRS.each do |number, roman|
			outcome << roman*(@value/number)
			@value = @value%number
		end
		return outcome
	end
end