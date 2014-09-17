class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :marca
      t.integer :ano
      t.string :modelo
      t.string :cor
      t.boolean :alugado
      t.float :valor_diaria
      t.integer :garagem_id
<<<<<<< HEAD
=======
      t.integer :locadora_id
>>>>>>> 7b2929ad5f002a8d9b316a7bdb4ec8e798bcbc2a
      t.integer :categoria_id

      t.timestamps
    end
    add_index(:veiculos, :garagem_id)
    add_index(:veiculos, :categoria_id)
    add_index(:veiculos, :locadora_id)
  end
end
