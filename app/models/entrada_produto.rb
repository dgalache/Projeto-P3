class EntradaProduto < ActiveRecord::Base
  belongs_to :itemProduto
  belongs_to :fornecedor
end
