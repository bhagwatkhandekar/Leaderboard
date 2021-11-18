json.extract! user, :id, :name, :contact_number, :player_id, :created_at, :updated_at
json.url user_url(user, format: :json)
