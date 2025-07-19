# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2025, by Samuel Williams.

# Check the types in the specified path.
# @parameter path [String] The path to the directory containing the tests.
def types(path: "lib")
	unless system("steep", "check", path)
		raise "Type check failed for #{path}."
	end
end
