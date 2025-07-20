# frozen_string_literal: true

require "bake/context"

describe "bake:test:types" do
	let(:context) {Bake::Context.load}
	let(:recipe) {context.lookup("test:types")}
	
	with "valid types" do
		let(:path) {File.expand_path(".fixtures/valid", __dir__)}
		
		it "can run the types task" do
			expect(recipe.call(path: path)).to be_truthy
		end
	end
	
	with "invalid types" do
		let(:path) {File.expand_path(".fixtures/invalid", __dir__)}
		
		it "fails when type checking encounters errors" do
			expect do
				recipe.call(path: path)
			end.to raise_exception(RuntimeError)
		end
	end
end