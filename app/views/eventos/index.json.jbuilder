json.array!(@eventos) do |evento|
  json.extract! evento, :id, :nombre
  json.url evento_url(evento, format: :json)
end
