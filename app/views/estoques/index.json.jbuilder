json.array!(@estoques) do |estoque|
  json.extract! estoque, :id, :nome
  json.url estoque_url(estoque, format: :json)
end
