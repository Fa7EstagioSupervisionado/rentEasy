class Cliente < ActiveRecord::Base
	has_many :alugueis
	belongs_to :endereco
	
	validates_associated :endereco

	validates_presence_of :nome, :cpf, :dt_nascimento, :sexo, :email, :telefone, :nr_habilitacao
end
