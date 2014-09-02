class Garagem < ActiveRecord::Base
	belongs_to :endereco
	has_many :veiculos

	validates_associated :endereco
end
