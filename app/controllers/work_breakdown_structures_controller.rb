class WorkBreakdownStructuresController < ApplicationController
  before_action :set_work_breakdown_structure, only: [:show, :edit, :update, :destroy]

  # GET /work_breakdown_structures
  # GET /work_breakdown_structures.json
  def index
    @work_breakdown_structures = WorkBreakdownStructure.all
  end

  # GET /work_breakdown_structures/1
  # GET /work_breakdown_structures/1.json
  def show
  end

  # GET /work_breakdown_structures/new
  def new
    @work_breakdown_structure = WorkBreakdownStructure.new
  end

  # GET /work_breakdown_structures/1/edit
  def edit
  end

  # POST /work_breakdown_structures
  # POST /work_breakdown_structures.json
  def create
    @work_breakdown_structure = WorkBreakdownStructure.new(work_breakdown_structure_params)

    respond_to do |format|
      if @work_breakdown_structure.save
        format.html { redirect_to @work_breakdown_structure, notice: 'Work breakdown structure was successfully created.' }
        format.json { render :show, status: :created, location: @work_breakdown_structure }
      else
        format.html { render :new }
        format.json { render json: @work_breakdown_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_breakdown_structures/1
  # PATCH/PUT /work_breakdown_structures/1.json
  def update
    respond_to do |format|
      if @work_breakdown_structure.update(work_breakdown_structure_params)
        format.html { redirect_to @work_breakdown_structure, notice: 'Work breakdown structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_breakdown_structure }
      else
        format.html { render :edit }
        format.json { render json: @work_breakdown_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_breakdown_structures/1
  # DELETE /work_breakdown_structures/1.json
  def destroy
    @work_breakdown_structure.destroy
    respond_to do |format|
      format.html { redirect_to work_breakdown_structures_url, notice: 'Work breakdown structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_breakdown_structure
      @work_breakdown_structure = WorkBreakdownStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_breakdown_structure_params
      params.require(:work_breakdown_structure).permit(:p_id)
    end
end
