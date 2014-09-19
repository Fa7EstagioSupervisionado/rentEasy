class Opcional < ActiveRecord::Base
	belongs_to :veiculo

	validates_associated :veiculo

	validates_presence_of :descricao, :valor, :nome
end
