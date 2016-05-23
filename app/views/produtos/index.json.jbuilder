json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :unidade, :setor, :valor_referencia, :valor_venda, :saldo, :estoque_id
  json.url produto_url(produto, format: :json)
end
