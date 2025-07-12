class KillEvent < ApplicationRecord
  belongs_to :combat_session
  belongs_to :killer, class_name: 'Player'
  belongs_to :victim, class_name: 'Player'
end
