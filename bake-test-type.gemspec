# frozen_string_literal: true

require_relative "lib/bake/test/types/version"

Gem::Specification.new do |spec|
	spec.name = "bake-test-types"
	spec.version = Bake::Test::Types::VERSION
	
	spec.summary = "Type checking tasks for Bake."
	spec.authors = ["Samuel Williams"]
	spec.license = "MIT"
	
	spec.homepage = "https://github.com/socketry/bake-test-type"
	
	spec.metadata = {
		"funding_uri" => "https://github.com/sponsors/ioquatix/",
		"source_code_uri" => "https://github.com/socketry/bake-test-type.git",
	}
	
	spec.files = Dir["{bake,lib}/**/*", "*.md", base: __dir__]
	
	spec.required_ruby_version = ">= 3.2"
	
	spec.add_dependency "steep"
end
