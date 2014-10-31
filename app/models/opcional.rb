class Opcional < ActiveRecord::Base
	belongs_to :locadora

	validates_associated :locadora
	validates_presence_of :descricao, :valor, :nome
end
