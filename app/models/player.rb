class Player < ApplicationRecord
	belongs_to :user
	belongs_to :game
	belongs_to :team

  before_save :set_current_winner

  def set_current_winner
  	last_player = Player.last
    if self.score != last_player.score
      self.match_win = true if self.score > last_player.score
      last_player.is_win = true if last_player.score > self.score
    end
  end
end
