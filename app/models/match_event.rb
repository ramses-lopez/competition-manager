class MatchEvent < ApplicationRecord

  module EventType
    GOAL = 'goal'
    YELLOW_CARD = 'yellow_card'
    RED_CARD = 'red_card'
    CHANGE_PLAYER = 'change_player'
    ALL = [GOAL, YELLOW_CARD, RED_CARD, CHANGE_PLAYER]
  end

  module EventAuthor
    AWAY = 'away'
    HOME = 'home'
    ALL = [HOME, AWAY]
  end

  belongs_to :match

end
