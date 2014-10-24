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

  def lista_carros
    @carros = Veiculo.order("modelo").where(:categoria_id => 1)    
  end

  def lista_motos
    @motos = Veiculo.order("modelo").where(:categoria_id => 2)
  end

  def lista_4x4
    @motos = Veiculo.order("modelo").where(:categoria_id => 4)
  end

  def lista_van
    @vans = Veiculo.order("modelo").where(:categoria_id => 3)
  end  
  
end