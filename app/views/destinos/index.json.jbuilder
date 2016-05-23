json.array!(@destinos) do |destino|
  json.extract! destino, :id, :nome, :descricao
  json.url destino_url(destino, format: :json)
end
