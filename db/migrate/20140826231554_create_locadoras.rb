class CreateLocadoras < ActiveRecord::Migration
  def change
    create_table :locadoras do |t|
      t.integer :cnpj
      t.string :nome
      t.integer :endereco_id
      t.string :responsavel
      t.string :email
      t.integer :telefone

      t.timestamps
    end
    add_index(:locadoras, :endereco_id)
  end
end
