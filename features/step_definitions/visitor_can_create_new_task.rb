

Then("I should be on New Task page") do
    visit new_task_path
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Then("I click on {string} link") do |new_task|
    click_link new_task
end

Then("there should be a New Task in the database") do
pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string}") do |string|
pending # Write code here that turns the phrase above into concrete actions
end

Then("I click on {string}") do |button|
    click_on(button)
end