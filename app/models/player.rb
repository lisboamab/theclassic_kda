class Player < ApplicationRecord
  belongs_to :guild, optional: true


  has_many :kill_events
end
