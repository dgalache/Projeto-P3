class CreateSaidaProdutos < ActiveRecord::Migration
  def change
    create_table :saida_produtos do |t|
      t.string :data
      t.string :utilizador
      t.references :itemProduto, index: true, foreign_key: true
      t.references :destino, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
