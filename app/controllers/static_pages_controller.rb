class StaticPagesController < ApplicationController
	skip_before_filter :authenticate_user!, :only => [:home]
	require 'user'

  def home
    @veiculos = Veiculo.order :modelo

  	if user_signed_in? && current_user.is_admin?
  		redirect_to :controller=>'dashboard', :action => 'admin_index'
    elsif user_signed_in? && current_user.is_cliente?   
      redirect_to :controller=>'dashboard', :action => 'cliente_index'   
    elsif user_signed_in? && current_user.is_locadora?   
      redirect_to :controller=>'dashboard', :action => 'locadora_index'     
  	end
  end

  def cadastro_usuario
  end

  def help
  end

  def lista_veiculos
    set_veiculos
  end

  def lista_carros
    set_veiculos
  end

  def lista_motos
    set_veiculos
  end

  def lista_pickups
    set_veiculos
  end

  def lista_van
    set_veiculos
  end  

  def lista_limo
    set_veiculos
  end

  def lista_familia
    set_veiculos
  end

  def lista_frete_comun
    set_veiculos
  end

  def lista_frete_frigo
    set_veiculos
  end

  private

  def set_veiculos
    @carros = Veiculo.where(:categoria_id => 1)
    @motos = Veiculo.where(:categoria_id => 2)  
    @vans = Veiculo.where(:categoria_id => 3)
    @pickups = Veiculo.where(:categoria_id => 4)
    @limos = Veiculo.where(:categoria_id => 5)
    @familias = Veiculo.where(:categoria_id => 6)
    @frete_comun = Veiculo.where(:categoria_id => 7)
    @frete_frigo = Veiculo.where(:categoria_id => 8) 
  end
  
end