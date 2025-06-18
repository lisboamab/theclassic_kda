json.extract! player, :id, :nickname, :kills, :deaths, :guild_id, :character_classes, :created_at, :updated_at
json.url player_url(player, format: :json)
