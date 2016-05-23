class CreateEntradaProdutos < ActiveRecord::Migration
  def change
    create_table :entrada_produtos do |t|
      t.string :data
      t.string :utilizador
      t.references :itemProduto, index: true, foreign_key: true
      t.references :fornecedor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
