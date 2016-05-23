class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :unidade
      t.string :setor
      t.float :valor_referencia
      t.float :valor_venda
      t.integer :saldo
      t.references :estoque, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
