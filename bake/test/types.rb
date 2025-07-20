# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2025, by Samuel Williams.

# Check the types in the specified path.
# @parameter path [String] The path to the directory containing the tests.
def types(path: context.root)
	if system("steep", "check", chdir: path)
		return true
	else
		raise "Type check failed for #{path}."
	end
end
