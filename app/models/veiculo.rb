class Veiculo < ActiveRecord::Base
	has_many :alugueis 
	has_many :opcionais
	belongs_to :garagem
	belongs_to :categoria
	belongs_to :locadora

	validates_associated :garagem, :categoria, :locadora
end
