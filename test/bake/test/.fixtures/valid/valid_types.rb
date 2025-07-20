# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2025, by Samuel Williams.

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
