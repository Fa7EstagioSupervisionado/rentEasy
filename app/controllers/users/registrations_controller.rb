class Users::RegistrationsController < Devise::RegistrationsController	

  def new
    prepara_form  
    @locadora = Locadora.find(params[:locadora_id])
    @user.locadora = Locadora.new
    @locadora.endereco = Endereco.new

    @cliente = Cliente.find(params[:cliente_id])
    @user.cliente = Cliente.new
    @cliente.endereco = Endereco.new
    super
  end

  def create
    prepara_form

    @user = User.new(user_params)    
    
    if @user.save      
      if @user.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(:user, @user)
        respond_with @user, :location => after_sign_up_path_for(@user)
      else
        set_flash_message :notice, :"signed_up_but_#{@user.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with @user, :location => after_inactive_sign_up_path_for(@user)
      end
    else
      clean_up_passwords @user
      respond_with @user
    end
  end

  def prepara_form
  	@user = User.new
    @cliente = Cliente.new
    @endereco = Endereco.new
    @locadora = Locadora.new
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :locadora_id, :cliente_id)
  end

  def locadora_params
    params.require(:locadora).permit(:cnpj, :nome, :endereco_id, :responsavel, :email, :telefone)
  end
    
  def endereco_params
    params.require(:endereco).permit(:cep, :rua, :bairro, :numero, :cidade, :estado)
  end 

end
