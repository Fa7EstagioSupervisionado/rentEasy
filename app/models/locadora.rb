class Locadora < ActiveRecord::Base
	has_many :veiculos
	belongs_to :endereco
	
	validates_associated :endereco
end
