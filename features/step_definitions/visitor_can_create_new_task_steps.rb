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