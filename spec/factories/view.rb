FactoryBot.define do
  factory :view do
    full_address { Faker::Address.full_address }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    association :tour
    association :user
    association :point
  end
end