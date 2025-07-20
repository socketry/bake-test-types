# frozen_string_literal: true

# This file contains valid Ruby code that should pass type checking

class ValidTypes
	def initialize
		@name = "test"
	end
	
	def convert_number(x)
		x.to_s
	end
	
	def get_strings
		["hello", "world"]
	end
	
	def get_name
		@name
	end
end 