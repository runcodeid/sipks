json.extract! user, :id, :email, :username, :city, :role_id, :created_at, :updated_at
json.url user_url(user, format: :json)
