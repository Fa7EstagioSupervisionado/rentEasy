class Locadora < ActiveRecord::Base
	has_many :veiculos
	has_one :user
	belongs_to :endereco
	
	validates_associated :endereco

	validates_presence_of :cnpj, :nome, :responsavel, :email, :telefone
end
