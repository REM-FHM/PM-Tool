class ModulsController < ApplicationController
  before_action :set_modul, only: [:show, :edit, :update, :destroy]

  # GET /moduls
  # GET /moduls.json
  def index
    @moduls = Modul.all
  end

  # GET /moduls/1
  # GET /moduls/1.json
  def show
  end

  # GET /moduls/new
  def new
    @modul = Modul.new
  end

  # GET /moduls/1/edit
  def edit
  end

  # POST /moduls
  # POST /moduls.json
  def create
    @modul = Modul.new(modul_params)

    respond_to do |format|
      if @modul.save
        format.html { redirect_to '/product_breakdown_structures/'+Subproduct.find_by(id: @modul.subproduct_id).pbs_id.to_s+'/edit', notice: 'Modul wurde erfolgreich angelegt' }
        format.json { render :show, status: :created, location: @modul }
      else
        format.html { render :new }
        format.json { render json: @modul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moduls/1
  # PATCH/PUT /moduls/1.json
  def update
    respond_to do |format|
      if @modul.update(modul_params)
        format.html { redirect_to @modul, notice: 'Modul wurde erfolgreich aktualisiert' }
        format.json { render :show, status: :ok, location: @modul }
      else
        format.html { render :edit }
        format.json { render json: @modul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moduls/1
  # DELETE /moduls/1.json
  def destroy
    @modul.destroy
    respond_to do |format|
      format.html { redirect_to '/product_breakdown_structures/'+Subproduct.find_by(id: @modul.subproduct_id).pbs_id.to_s+'/edit', notice: 'Modul wurde erfolgreich gelöscht' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modul
      @modul = Modul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modul_params
      params.require(:modul).permit(:name, :subproduct_id)
    end
end
