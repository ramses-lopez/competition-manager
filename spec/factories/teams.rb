FactoryBot.define do
  factory :team do
    name { Faker::Football.team }
    logo { Faker::Avatar.image }
  end
end
