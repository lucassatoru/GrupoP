class LocalizacaoOnibusesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_localizacao_onibus, only: [:show, :edit, :update, :destroy]

  # GET /localizacao_onibuses
  # GET /localizacao_onibuses.json
  def index
    @localizacao_onibuses = LocalizacaoOnibus.all
  end

  # GET /localizacao_onibuses/1
  # GET /localizacao_onibuses/1.json
  def show
  end

  # GET /localizacao_onibuses/new
  def new
    @localizacao_onibus = LocalizacaoOnibus.new
  end

  # GET /localizacao_onibuses/1/edit
  def edit
  end

  # POST /localizacao_onibuses
  # POST /localizacao_onibuses.json
  def create
    @localizacao_onibus = LocalizacaoOnibus.new(localizacao_onibus_params)

    respond_to do |format|
      if @localizacao_onibus.save
        format.html { redirect_to @localizacao_onibus, notice: 'Localizacao onibus was successfully created.' }
        format.json { render :show, status: :created, location: @localizacao_onibus }
      else
        format.html { render :new }
        format.json { render json: @localizacao_onibus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /localizacao_onibuses/1
  # PATCH/PUT /localizacao_onibuses/1.json
  def update
    respond_to do |format|
      if @localizacao_onibus.update(localizacao_onibus_params)
        format.html { redirect_to @localizacao_onibus, notice: 'Localizacao onibus was successfully updated.' }
        format.json { render :show, status: :ok, location: @localizacao_onibus }
      else
        format.html { render :edit }
        format.json { render json: @localizacao_onibus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localizacao_onibuses/1
  # DELETE /localizacao_onibuses/1.json
  def destroy
    @localizacao_onibus.destroy
    respond_to do |format|
      format.html { redirect_to localizacao_onibuses_url, notice: 'Localizacao onibus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localizacao_onibus
      @localizacao_onibus = LocalizacaoOnibus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def localizacao_onibus_params
      params.require(:localizacao_onibus).permit(:Usuario_Id, :Onibus_Id_Onibus, :Localizacao, :Data_2, :Hora)
    end
end
