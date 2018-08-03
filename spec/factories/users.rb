FactoryBot.define do
  factory :user do
    name "Pablo"
    sequence(:email) {|u| "pablo@test.com"}    
    password "my-password"
    password_confirmation "my-password"
  end
end
