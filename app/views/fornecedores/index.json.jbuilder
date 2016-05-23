json.array!(@fornecedores) do |fornecedor|
  json.extract! fornecedor, :id, :nome
  json.url fornecedor_url(fornecedor, format: :json)
end
