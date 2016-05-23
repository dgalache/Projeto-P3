class CreateDestinos < ActiveRecord::Migration
  def change
    create_table :destinos do |t|
      t.string :nome
      t.string :descricao

      t.timestamps null: false
    end
  end
end
