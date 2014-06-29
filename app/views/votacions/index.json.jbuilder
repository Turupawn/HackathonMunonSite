json.array!(@votacions) do |votacion|
  json.extract! votacion, :id, :proyecto_id, :user_id, :valor
  json.url votacion_url(votacion, format: :json)
end
