FactoryBot.define do
  factory :tour do
    name    { "Tour #{Faker::Name.name}" }
    description { "Tour #{Faker::Lorem.sentence}" }
    association :user
  end
end