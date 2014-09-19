class Locadora < ActiveRecord::Base
	has_many :veiculos
	belongs_to :endereco
	
	validates_associated :endereco

	validates_presence_of :cnpj, :nome, :endereco_id, :responsavel, :email, :telefone
end
