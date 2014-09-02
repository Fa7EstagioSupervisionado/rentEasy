class AddCategoriaIdToVeiculo < ActiveRecord::Migration
  def change
    add_column :veiculos, :categoria_id, :integer
  end
  add_index(:veiculos, :categoria_id)
end
