FactoryBot.define do
  factory :task do
    title "MyString"
    description "MyText"
    location "MyString"
    budget 1
    state :open
  end
end
