class DelphiEstimationsController < ApplicationController
  before_action :set_delphi_estimation, only: [:show, :edit, :update, :destroy]

  # GET /delphi_estimations
  # GET /delphi_estimations.json
  def index
    @delphi_estimations = DelphiEstimation.all
  end

  # GET /delphi_estimations/1
  # GET /delphi_estimations/1.json
  def show
  end

  # GET /delphi_estimations/new
  def new
    @delphi_estimation = DelphiEstimation.new
  end

  # GET /delphi_estimations/1/edit
  def edit
  end

  # POST /delphi_estimations
  # POST /delphi_estimations.json
  def create
    @delphi_estimation = DelphiEstimation.new(delphi_estimation_params)

    respond_to do |format|
      if @delphi_estimation.save
        format.html { redirect_to @delphi_estimation, notice: 'Delphi-Breitband-Schätzung wurde erfolgreich angelegt' }
        format.json { render :show, status: :created, location: @delphi_estimation }
      else
        format.html { render :new }
        format.json { render json: @delphi_estimation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delphi_estimations/1
  # PATCH/PUT /delphi_estimations/1.json
  def update
    respond_to do |format|
      if @delphi_estimation.update(delphi_estimation_params)
        format.html { redirect_to @delphi_estimation, notice: 'Delphi-Breitband-Schätzung wurde erfolgreich aktualisiert.' }
        format.json { render :show, status: :ok, location: @delphi_estimation }
      else
        format.html { render :edit }
        format.json { render json: @delphi_estimation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delphi_estimations/1
  # DELETE /delphi_estimations/1.json
  def destroy
    @delphi_estimation.destroy
    respond_to do |format|
      format.html { redirect_to delphi_estimations_url, notice: 'Delphi-Breitband-Schätzung wurde erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delphi_estimation
      @delphi_estimation = DelphiEstimation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delphi_estimation_params
      params.require(:delphi_estimation).permit(:p_id)
    end
end
