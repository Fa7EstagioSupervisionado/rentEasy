class GaragensController < ApplicationController
  before_action :set_garagem, only: [:show, :edit, :update, :destroy]
  # GET /garagens
  # GET /garagens.json
  def index
    prepara_form
    @garagens = Garagem.all
  end

  # GET /garagens/1
  # GET /garagens/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /garagens/new
  def new
    prepara_form
    @garagem = Garagem.new
    @garagem.endereco = Endereco.new
  end

  # GET /garagens/1/edit
  def edit
    prepara_form
  end

  # POST /garagens
  # POST /garagens.json
  def create
    prepara_form
    @garagem = Garagem.new(garagem_params)
    @garagem.endereco = Endereco.new(endereco_params)

    respond_to do |format|
      if @garagem.save
        format.html { redirect_to @garagem, notice: 'Garagem was successfully created.' }
        format.json { render :show, status: :created, location: @garagem }
      else
        format.html { render :new }
        format.json { render json: @garagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garagens/1
  # PATCH/PUT /garagens/1.json
  def update
    prepara_form
    respond_to do |format|
      if @garagem.update(garagem_params)
        format.html { redirect_to @garagem, notice: 'Garagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @garagem }
      else
        format.html { render :edit }
        format.json { render json: @garagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garagens/1
  # DELETE /garagens/1.json
  def destroy
    @garagem.destroy
    respond_to do |format|
      format.html { redirect_to garagens_url, notice: 'Garagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def prepara_form
    @enderecos = Endereco.order :rua
  end

  def set_garagem
    @garagem = Garagem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def garagem_params
    params.require(:garagem).permit(:endereco_id, :nome)
  end

  def endereco_params
    params.require(:endereco).permit(:cep, :rua, :bairro, :numero, :cidade, :estado)
  end
end
