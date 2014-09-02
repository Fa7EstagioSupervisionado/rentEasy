class CreateGaragens < ActiveRecord::Migration
  def change
    create_table :garagens do |t|
      t.integer :endereco_id
      t.string :nome

      t.timestamps
    end
    add_index(:garagens, :endereco_id)
  end
end
