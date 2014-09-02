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

      t.timestamps
    end
    add_index(:veiculos, :garagem_id)
    add_index(:veiculos, :categoria_id)
  end
end
