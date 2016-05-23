json.array!(@saida_produtos) do |saida_produto|
  json.extract! saida_produto, :id, :data, :utilizador, :itemProduto_id, :destino_id
  json.url saida_produto_url(saida_produto, format: :json)
end
