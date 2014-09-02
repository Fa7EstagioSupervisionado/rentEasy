class Cliente < ActiveRecord::Base
	has_many :alugueis
	belongs_to :endereco
	
	validates_associated :endereco
end
