class Endereco < ActiveRecord::Base
	has_many :locadoras
	has_many :garagens
	has_many :clientes
	
	validates_presence_of :cep, :rua, :bairro, :numero, :cidade, :estado
	
end
