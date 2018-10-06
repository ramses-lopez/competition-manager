class Match < ApplicationRecord
  has_many :match_events

  # TODO this should be done on after_save of match event
  def score
    goals = self.match_events.select { |e|  e.event_type == MatchEvent::EventType::GOAL }
    goals.reduce({away: 0, home: 0}) do |score, e|
      if e.event_author == MatchEvent::EventAuthor::HOME
        score[:home] += 1
      elsif e.event_author == MatchEvent::EventAuthor::AWAY
        score[:away] += 1
      end
      score
    end
  end
end
