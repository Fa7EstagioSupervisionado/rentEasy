class OpcionaisController < ApplicationController
  before_action :set_opcional, only: [:show, :edit, :update, :destroy]

  # GET /opcionais
  # GET /opcionais.json
  def index
    prepara_form
    @locadora = Locadora.find(params[:locadora_id])
    @opcionais = Opcional.where(["locadora_id =?",@locadora.id])
  end

  # GET /opcionais/1
  # GET /opcionais/1.json
  def show
     respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /opcionais/new
  def new
    prepara_form
    @opcional = Opcional.new
  end

  # GET /opcionais/1/edit
  def edit
    prepara_form
  end

  # POST /opcionais
  # POST /opcionais.json
  def create
    prepara_form
    @opcional = Opcional.new(opcional_params)

    respond_to do |format|
      if @opcional.save
        format.html { redirect_to @opcional, notice: 'Opcional was successfully created.' }
        format.json { render :show, status: :created, location: @opcional }
      else
        format.html { render :new }
        format.json { render json: @opcional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opcionais/1
  # PATCH/PUT /opcionais/1.json
  def update
    prepara_form
    respond_to do |format|
      if @opcional.update(opcional_params)
        format.html { redirect_to @opcional, notice: 'Opcional was successfully updated.' }
        format.json { render :show, status: :ok, location: @opcional }
      else
        format.html { render :edit }
        format.json { render json: @opcional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opcionais/1
  # DELETE /opcionais/1.json
  def destroy
    @opcional.destroy
    respond_to do |format|
      format.html { redirect_to opcionais_url, notice: 'Opcional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def prepara_form
      @veiculos = Veiculo.order :modelo
    end

    def set_opcional
      @opcional = Opcional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opcional_params
      params.require(:opcional).permit(:descricao, :nome, :valor, :veiculo_id)
    end
end
