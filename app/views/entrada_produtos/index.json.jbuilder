json.array!(@entrada_produtos) do |entrada_produto|
  json.extract! entrada_produto, :id, :data, :utilizador, :itemProduto_id, :fornecedor_id
  json.url entrada_produto_url(entrada_produto, format: :json)
end
