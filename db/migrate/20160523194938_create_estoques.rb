class CreateEstoques < ActiveRecord::Migration
  def change
    create_table :estoques do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
