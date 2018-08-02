Then("there should be a Task titled {string} in the database") do |expected_title|
    expect(Task.last.title).to eq expected_title
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should be sent to the Sign In page") do
    expect(current_path).to eq new_user_session_path
end

Then("I should be on the Landing page") do
    expect(current_path).to eq root_path
end
