# frozen_string_literal: true

# This file contains code that will cause steep check to fail

class InvalidTypes
	def initialize
		@name = "test"
	end
	
	def convert_number(x)
		# Call methods that don't exist - this should cause steep to fail
		non_existent_method()
		definitely_not_a_method(x, "hello")
		
		# Call method on undefined variable
		undefined_variable.some_method()
	end
	
	def get_strings
		# More non-existent method calls
		another_missing_method.chain.more_missing.methods()
	end
end 