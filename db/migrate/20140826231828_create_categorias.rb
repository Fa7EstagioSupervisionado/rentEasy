class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nome
      t.integer :capacidade_passageiros
      t.integer :qt_bagagem_pequena
      t.integer :qt_bagagem_grande

      t.timestamps
    end
  end
end
