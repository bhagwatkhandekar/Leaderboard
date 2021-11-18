json.extract! player, :id, :name, :score, :contact_number, :address, :match_win, :game_id, :team_id, :created_at, :updated_at
json.url player_url(player, format: :json)
