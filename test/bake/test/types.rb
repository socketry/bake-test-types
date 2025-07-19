require "bake/context"

describe "bake:test:types" do
	let(:context) {Bake::Context.load}
	
	it "can run the types task" do
		recipe = context.lookup("test:types")
		
		expect(recipe.call).to be_truthy
	end
end