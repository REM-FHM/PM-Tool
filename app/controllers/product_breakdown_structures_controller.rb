class ProductBreakdownStructuresController < ApplicationController
  before_action :set_product_breakdown_structure, only: [:show, :edit, :update, :destroy, :chart]

  # GET /product_breakdown_structures
  # GET /product_breakdown_structures.json
  def index
    @product_breakdown_structures = ProductBreakdownStructure.all
  end

  # GET /product_breakdown_structures/1
  # GET /product_breakdown_structures/1.json
  def show
  end

  def chart
    product_breakdown_chart
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
        format.html { redirect_to @product_breakdown_structure, notice: 'Product Breakdown Structure wurde erfolgreich angelegt' }
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
        format.html { redirect_to @product_breakdown_structure, notice: 'Product Breakdown Structure wurde erfolgreich aktualisiert' }
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
      format.html { redirect_to product_breakdown_structures_url, notice: 'Product Breakdown Structure wurde erfolgreich gelöscht' }
      format.json { head :no_content }
    end
  end

  def product_breakdown_chart
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Name')
    data_table.new_column('string', 'Vorgänger')
    data_table.new_column('string', 'Paket')
    
    project = Project.find_by_id(@product_breakdown_structure.p_id)
    data_table.add_rows([[project.name,'','Produkt']])
    subproducts = Subproduct.where(pbs_id: @product_breakdown_structure.id)
    subproducts.each do |subproduct|
      #<div style="background-color:#ff00ff">
      data_table.add_rows([[subproduct.name, project.name,'Teilprodukt']])
      #data_table.setRowProperty(3, 'style', 'background: #FF0000');
      moduls = Modul.where(subproduct_id: subproduct.id)
      moduls.each do |modul|
        data_table.add_rows([[modul.name,subproduct.name,'Modul']])
        components = Component.where(modul_id: modul.id)
        components.each do |component|
          data_table.add_rows([[component.name,modul.name,'Komponente']])
        end
      end
    end
    options = {allowHtml:true, tooltip: {isHtml: true}}
    @pbs_chart = GoogleVisualr::Interactive::OrgChart.new(data_table, options)
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
