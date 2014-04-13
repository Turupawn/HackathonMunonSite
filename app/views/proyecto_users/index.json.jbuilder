json.array!(@proyecto_users) do |proyecto_user|
  json.extract! proyecto_user, :id, :proyecto_id, :user_id
  json.url proyecto_user_url(proyecto_user, format: :json)
end
