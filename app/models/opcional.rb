class Opcional < ActiveRecord::Base
	belongs_to :veiculo

	validates_associated :veiculo
end
