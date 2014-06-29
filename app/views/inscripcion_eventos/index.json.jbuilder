json.array!(@inscripcion_eventos) do |inscripcion_evento|
  json.extract! inscripcion_evento, :id, :user_id, :evento_id
  json.url inscripcion_evento_url(inscripcion_evento, format: :json)
end
