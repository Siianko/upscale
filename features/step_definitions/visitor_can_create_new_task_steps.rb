Then("I should be on New Task page") do
    visit new_task_path
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Then("I click on {string} link") do |link|
    click_link link
end

Then("there should be a {string} in the database") do |count|
    expect(Task.count).to eq 1
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I click on {string}") do |button|
    click_on button
end