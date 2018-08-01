Given("the following user exists:") do |table|
    table.hashes.each do |hash|
        FactoryBot.create(:user, hash)
    end
end
  
  Given("I am on the signup page") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should be sent to {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  