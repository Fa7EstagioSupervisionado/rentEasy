class LocadorasController < ApplicationController
  before_action :set_locadora, only: [:show, :edit, :update, :destroy]

  # GET /locadoras
  # GET /locadoras.json
  def index
    @locadoras = Locadora.all
    prepara_form
  end

  # GET /locadoras/1
  # GET /locadoras/1.json
  def show
    respond_to do |format|
      format.js
    end
  end

  # GET /locadoras/new
  def new
    prepara_form
    @locadora = Locadora.new
  end

  # GET /locadoras/1/edit
  def edit
    prepara_form
  end

  # POST /locadoras
  # POST /locadoras.json
  def create
    prepara_form
    @locadora = Locadora.new(locadora_params)

    respond_to do |format|
      if @locadora.save
        format.html { redirect_to @locadora, notice: 'Locadora was successfully created.' }
        format.json { render :show, status: :created, location: @locadora }
      else
        format.html { render :new }
        format.json { render json: @locadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locadoras/1
  # PATCH/PUT /locadoras/1.json
  def update
    prepara_form
    respond_to do |format|
      if @locadora.update(locadora_params)
        format.html { redirect_to @locadora, notice: 'Locadora was successfully updated.' }
        format.json { render :show, status: :ok, location: @locadora }
      else
        format.html { render :edit }
        format.json { render json: @locadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locadoras/1
  # DELETE /locadoras/1.json
  def destroy
    @locadora.destroy
    respond_to do |format|
      format.html { redirect_to locadoras_url, notice: 'Locadora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def prepara_form
      @enderecos = Endereco.all
    end

    def set_locadora
      @locadora = Locadora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locadora_params
      params.require(:locadora).permit(:cnpj, :nome, :endereco_id, :responsavel, :email, :telefone)
    end
end
