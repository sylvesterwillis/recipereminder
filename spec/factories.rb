FactoryGirl.define do
  factory :user do |f|
    f.sequence(:email) { |n| "test#{n}@example.com" }
    f.password "password"
    f.first_name "Jave"
    f.last_name "Cohnson"
  end
end
