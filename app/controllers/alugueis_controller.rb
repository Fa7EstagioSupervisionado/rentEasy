class AlugueisController < ApplicationController
  before_action :set_aluguel, only: [:show, :edit, :update, :destroy]

  # GET /alugueis
  # GET /alugueis.json
  def index
    prepara_form
    @alugueis = Aluguel.all
  end

  # GET /alugueis/1
  # GET /alugueis/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /alugueis/new
  def new
    prepara_form
    @aluguel = Aluguel.new
  end

  # GET /alugueis/1/edit
  def edit
    prepara_form
  end

  # POST /alugueis
  # POST /alugueis.json
  def create
    prepara_form
    @aluguel = Aluguel.new(aluguel_params)

    respond_to do |format|
      if @aluguel.save
        format.html { redirect_to @aluguel, notice: 'Aluguel was successfully created.' }
        format.json { render :show, status: :created, location: @aluguel }
      else
        format.html { render :new }
        format.json { render json: @aluguel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alugueis/1
  # PATCH/PUT /alugueis/1.json
  def update
    prepara_form
    respond_to do |format|
      if @aluguel.update(aluguel_params)
        format.html { redirect_to @aluguel, notice: 'Aluguel was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluguel }
      else
        format.html { render :edit }
        format.json { render json: @aluguel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alugueis/1
  # DELETE /alugueis/1.json
  def destroy
    @aluguel.destroy
    respond_to do |format|
      format.html { redirect_to alugueis_url, notice: 'Aluguel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def prepara_form
      @clientes = Cliente.order :nome
      @veiculos = Veiculo.order :modelo
    end

    def set_aluguel
      @aluguel = Aluguel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluguel_params
      params.require(:aluguel).permit(:cliente_id, :veiculo_id, :dt_recebimento, :dt_devolucao, :preco_total)
    end
end
