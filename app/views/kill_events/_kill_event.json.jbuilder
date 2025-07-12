json.extract! kill_event, :id, :combat_session_id, :killer_id, :victim_id, :created_at, :updated_at
json.url kill_event_url(kill_event, format: :json)
