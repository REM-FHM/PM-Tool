class ResourceBreakdownStructuresController < ApplicationController
  before_action :set_resource_breakdown_structure, only: [:show, :edit, :update, :destroy]

  # GET /resource_breakdown_structures
  # GET /resource_breakdown_structures.json
  def index
    @resource_breakdown_structures = ResourceBreakdownStructure.all
  end

  # GET /resource_breakdown_structures/1
  # GET /resource_breakdown_structures/1.json
  def show
  end

  # GET /resource_breakdown_structures/new
  def new
    @resource_breakdown_structure = ResourceBreakdownStructure.new
  end

  # GET /resource_breakdown_structures/1/edit
  def edit
  end

  # POST /resource_breakdown_structures
  # POST /resource_breakdown_structures.json
  def create
    @resource_breakdown_structure = ResourceBreakdownStructure.new(resource_breakdown_structure_params)

    respond_to do |format|
      if @resource_breakdown_structure.save
        format.html { redirect_to @resource_breakdown_structure, notice: 'Resource breakdown structure was successfully created.' }
        format.json { render :show, status: :created, location: @resource_breakdown_structure }
      else
        format.html { render :new }
        format.json { render json: @resource_breakdown_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_breakdown_structures/1
  # PATCH/PUT /resource_breakdown_structures/1.json
  def update
    respond_to do |format|
      if @resource_breakdown_structure.update(resource_breakdown_structure_params)
        format.html { redirect_to @resource_breakdown_structure, notice: 'Resource breakdown structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_breakdown_structure }
      else
        format.html { render :edit }
        format.json { render json: @resource_breakdown_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_breakdown_structures/1
  # DELETE /resource_breakdown_structures/1.json
  def destroy
    @resource_breakdown_structure.destroy
    respond_to do |format|
      format.html { redirect_to resource_breakdown_structures_url, notice: 'Resource breakdown structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_breakdown_structure
      @resource_breakdown_structure = ResourceBreakdownStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_breakdown_structure_params
      params.require(:resource_breakdown_structure).permit(:p_id)
    end
end
