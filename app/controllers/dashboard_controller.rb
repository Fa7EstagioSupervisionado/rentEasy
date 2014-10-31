class DashboardController < ApplicationController
	before_filter :authenticate_user!
	require 'user'

	def index		
	end

	def cliente_index
		@clientes = Cliente.order :nome
	end

	def locadora_index
		@veiculos = Veiculo.order :modelo
		@locadoras = Locadora.order :nome
		@garagens = Garagem.order :nome
	end

	def admin_index
		@clientes = Cliente.order :nome
   		@veiculos = Veiculo.order :modelo
    	@locadoras = Locadora.order :nome
	end
end
