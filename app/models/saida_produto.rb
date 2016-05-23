class SaidaProduto < ActiveRecord::Base
  belongs_to :itemProduto
  belongs_to :destino
end
