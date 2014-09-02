class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.integer :cpf
      t.datetime :dt_nascimento
      t.string :sexo
      t.string :email
      t.integer :endereco_id
      t.integer :telefone
      t.integer :nr_habilitacao

      t.timestamps
    end
    add_index(:clientes, :endereco_id)
  end
end
