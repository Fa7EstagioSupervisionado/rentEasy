class ChangeCpfDtNascimentoNrHabilitacaoTelefone < ActiveRecord::Migration
  def self.up
    change_table :clientes do |t|
      t.change :cpf, :string
      t.change :dt_nascimento, :date
      t.change :nr_habilitacao, :string
      t.change :telefone, :string
    end
  end

  def self.down
    change_table :tablename do |t|
      t.change :cpf, :integer
      t.change :nr_habilitacao, :integer
      t.change :dt_nascimento, :datetime
      t.change :telefone, :integer
    end
  end
end
