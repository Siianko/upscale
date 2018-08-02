When("I am at the index page") do
    visit root_path
end

Then("I should be on the Landing page") do
    expect(current_path).to eq root_path
end