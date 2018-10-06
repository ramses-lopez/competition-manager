FactoryBot.define do
  factory :match_event do
    match
    event_type { MatchEvent::EventType::ALL.sample }
    event_author { MatchEvent::EventAuthor::ALL.sample }
    event_minute { (1..30).to_a.sample }
  end
end
