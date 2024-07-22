FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    sequence(:email) {|n| n.to_s + Faker::Internet.email }
    password { Faker::Internet.password(min_length: 10) }
    confirmed_at { Time.current }
  end
end
