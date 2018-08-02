Then('show me the page') do
    save_and_open_page
end

When("I am on the landing page") do
    visit root_path
end

Given("I am on the signup page") do
    visit new_user_registration_path
end

Given("I am on New Task page") do
    visit new_task_path
end

Then("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Then("I click on {string} link") do |link|
    click_link link
end

Then("I click on {string}") do |button|
    click_on button
end