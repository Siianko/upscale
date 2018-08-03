Given("the following task exists") do |table|
    table.hashes.each do |task_hash|
        user = User.find_by(email: task_hash[:user])
        task_hash['user'] = user
        FactoryBot.create(:task, task_hash)
    end
end