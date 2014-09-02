class Aluguel < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :veiculo
	validates_associated :cliente, :veiculo
end
