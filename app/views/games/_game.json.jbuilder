json.extract! game, :id, :game_format, :location, :more_info, :created_at, :updated_at
json.url game_url(game, format: :json)
