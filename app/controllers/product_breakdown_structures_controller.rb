class ProductBreakdownStructuresController < ApplicationController
  before_action :set_product_breakdown_structure, only: [:show, :edit, :update, :destroy]

  # GET /product_breakdown_structures
  # GET /product_breakdown_structures.json
  def index
    @product_breakdown_structures = ProductBreakdownStructure.all
  end

  # GET /product_breakdown_structures/1
  # GET /product_breakdown_structures/1.json
  def show
  end

  # GET /product_breakdown_structures/new
  def new
    @product_breakdown_structure = ProductBreakdownStructure.new
  end

  # GET /product_breakdown_structures/1/edit
  def edit
  end

  # POST /product_breakdown_structures
  # POST /product_breakdown_structures.json
  def create
    @product_breakdown_structure = ProductBreakdownStructure.new(product_breakdown_structure_params)

    respond_to do |format|
      if @product_breakdown_structure.save
        format.html { redirect_to @product_breakdown_structure, notice: 'Product breakdown structure was successfully created.' }
        format.json { render :show, status: :created, location: @product_breakdown_structure }
      else
        format.html { render :new }
        format.json { render json: @product_breakdown_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_breakdown_structures/1
  # PATCH/PUT /product_breakdown_structures/1.json
  def update
    respond_to do |format|
      if @product_breakdown_structure.update(product_breakdown_structure_params)
        format.html { redirect_to @product_breakdown_structure, notice: 'Product breakdown structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_breakdown_structure }
      else
        format.html { render :edit }
        format.json { render json: @product_breakdown_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_breakdown_structures/1
  # DELETE /product_breakdown_structures/1.json
  def destroy
    @product_breakdown_structure.destroy
    respond_to do |format|
      format.html { redirect_to product_breakdown_structures_url, notice: 'Product breakdown structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_breakdown_structure
      @product_breakdown_structure = ProductBreakdownStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_breakdown_structure_params
      params.require(:product_breakdown_structure).permit(:p_id)
    end
end
