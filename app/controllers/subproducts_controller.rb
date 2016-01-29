class SubproductsController < ApplicationController
  before_action :set_subproduct, only: [:show, :edit, :update, :destroy]

  # GET /subproducts
  # GET /subproducts.json
  def index
    @subproducts = Subproduct.all
  end

  # GET /subproducts/1
  # GET /subproducts/1.json
  def show
  end

  # GET /subproducts/new
  def new
    @subproduct = Subproduct.new
  end

  # GET /subproducts/1/edit
  def edit
  end

  # POST /subproducts
  # POST /subproducts.json
  def create
    @subproduct = Subproduct.new(subproduct_params)

    respond_to do |format|
      if @subproduct.save
        format.html { redirect_to '/product_breakdown_structures/'+@subproduct.pbs_id.to_s+'/edit', notice: 'Teilprodukt wurde erfolgreich angelegt' }
        format.json { render :show, status: :created, location: @subproduct }
      else
        format.html { render :new }
        format.json { render json: @subproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subproducts/1
  # PATCH/PUT /subproducts/1.json
  def update
    respond_to do |format|
      if @subproduct.update(subproduct_params)
        format.html { redirect_to @subproduct, notice: 'Teilprodukt wurde erfolgreich aktualisiert' }
        format.json { render :show, status: :ok, location: @subproduct }
      else
        format.html { render :edit }
        format.json { render json: @subproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subproducts/1
  # DELETE /subproducts/1.json
  def destroy
    @subproduct.destroy
    respond_to do |format|
      format.html { redirect_to '/product_breakdown_structures/'+@subproduct.pbs_id.to_s, notice: 'Teilprodukt wurde erfolgreich gelöscht' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subproduct
      @subproduct = Subproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subproduct_params
      params.require(:subproduct).permit(:name, :pbs_id)
    end
end
