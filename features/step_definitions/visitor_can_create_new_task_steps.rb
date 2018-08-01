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

Then("I should be sent to the Sign In page") do
    expect(current_path).to eq new_user_session_path
end

Given("the following users exist") do |table|
    table.hashes.each do |user_hash|
        FactoryBot.create(:user, user_hash)
    end
end

Given("I am logged in as {string}") do |email|
    user = User.find_by(email: email)
    login_as(user, scope: :user)
end

Given("that I am logged out") do
    logout
end