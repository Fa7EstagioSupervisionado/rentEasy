class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.integer :cep
      t.string :rua
      t.string :bairro
      t.integer :numero
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
