class ResourceAllocationMatricesController < ApplicationController
  before_action :set_resource_allocation_matrix, only: [:show, :edit, :update, :destroy]

  # GET /resource_allocation_matrices
  # GET /resource_allocation_matrices.json
  def index
    @resource_allocation_matrices = ResourceAllocationMatrix.all
  end

  # GET /resource_allocation_matrices/1
  # GET /resource_allocation_matrices/1.json
  def show
  end

  # GET /resource_allocation_matrices/new
  def new
    @resource_allocation_matrix = ResourceAllocationMatrix.new
  end

  # GET /resource_allocation_matrices/1/edit
  def edit
  end

  # POST /resource_allocation_matrices
  # POST /resource_allocation_matrices.json
  def create
    @resource_allocation_matrix = ResourceAllocationMatrix.new(resource_allocation_matrix_params)

    respond_to do |format|
      if @resource_allocation_matrix.save
        format.html { redirect_to @resource_allocation_matrix, notice: 'Resource Allocation Matrix wurde erfolgreich angelegt' }
        format.json { render :show, status: :created, location: @resource_allocation_matrix }
      else
        format.html { render :new }
        format.json { render json: @resource_allocation_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_allocation_matrices/1
  # PATCH/PUT /resource_allocation_matrices/1.json
  def update
    respond_to do |format|
      if @resource_allocation_matrix.update(resource_allocation_matrix_params)
        format.html { redirect_to @resource_allocation_matrix, notice: 'Resource Allocation Matrix wurde erfolgreich aktualisiert' }
        format.json { render :show, status: :ok, location: @resource_allocation_matrix }
      else
        format.html { render :edit }
        format.json { render json: @resource_allocation_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_allocation_matrices/1
  # DELETE /resource_allocation_matrices/1.json
  def destroy
    @resource_allocation_matrix.destroy
    respond_to do |format|
      format.html { redirect_to resource_allocation_matrices_url, notice: 'Resource Allocation Matrix wurde erfolgreich gelöscht' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_allocation_matrix
      @resource_allocation_matrix = ResourceAllocationMatrix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_allocation_matrix_params
      params.require(:resource_allocation_matrix).permit(:p_id)
    end
end
