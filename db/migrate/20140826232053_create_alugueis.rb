class CreateAlugueis < ActiveRecord::Migration
  def change
    create_table :alugueis do |t|
      t.integer :cliente_id
      t.integer :veiculo_id
      t.datetime :dt_recebimento
      t.datetime :dt_devolucao
      t.float :preco_total

      t.timestamps
    end
    add_index(:alugueis, :cliente_id)
    add_index(:alugueis, :veiculo_id)
  end
end
