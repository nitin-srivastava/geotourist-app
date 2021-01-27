FactoryBot.define do
  factory :point do
    name { "Point #{Faker::Name.name}" }
    description { "Point #{Faker::Lorem.sentence}" }
    full_address { Faker::Address.full_address }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    association :tour
  end
end