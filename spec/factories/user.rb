FactoryGirl.define do
  factory :user do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    sequence(:email) { |n| "person-#{n}@example.com" }
    password { FFaker::Internet.password }
    gender { Random.rand(2) }
    dob { rand(18..50).years.ago }
  end
end
