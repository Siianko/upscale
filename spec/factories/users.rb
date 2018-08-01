FactoryBot.define do
  factory :user do
    name "Pablo"
    email "pablo@test.com"
    password "my-password"
    password_confirmation "my-password"
  end
end
