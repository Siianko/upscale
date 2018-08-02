Given("the following task exists") do |table|
    table.hashes.each do |task_hash|
        FactoryBot.create(:task, task_hash)
    end
  end