Given("I am on New Task page") do
    visit new_task_path
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Then("I click on {string} link") do |link|
    click_link link
end

Then("there should be a Task titled {string} in the database") do |expected_title|
    expect(Task.last.title).to eq expected_title
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I click on {string}") do |button|
    click_on button
end