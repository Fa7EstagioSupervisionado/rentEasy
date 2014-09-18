class Garagem < ActiveRecord::Base
	belongs_to :endereco
	has_many :veiculos

	validates_associated :endereco
	
	validates_presence_of :nome
	
end
