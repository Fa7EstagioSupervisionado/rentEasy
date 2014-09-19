class Categoria < ActiveRecord::Base
	has_many :veiculos

	validates_presence_of :nome, :capacidade_passageiros, :qt_bagagem_pequena, :qt_bagagem_grande
end
