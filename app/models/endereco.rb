class Endereco < ActiveRecord::Base
	has_many :locadoras
	has_many :garagens
	has_many :clientes
end
