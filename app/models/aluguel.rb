class Aluguel < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :veiculo
	validates_associated :cliente, :veiculo

	validates_presence_of :cliente_id, :veiculo_id, :dt_recebimento, :dt_devolucao, :preco_total
end
