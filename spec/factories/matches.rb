FactoryBot.define do
  factory :match do
    date { Time.now + (5..10).to_a.sample.days }
    location { Faker::Address.city }
    home_team_name { Faker::Football.team }
    away_team_name { Faker::Football.team }
  end
end
