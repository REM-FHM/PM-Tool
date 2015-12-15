class WorkpackagesController < ApplicationController
  before_action :set_workpackage, only: [:show, :edit, :update, :destroy]

  # GET /workpackages
  # GET /workpackages.json
  def index
    @workpackages = Workpackage.all
  end

  # GET /workpackages/1
  # GET /workpackages/1.json
  def show
  end

  # GET /workpackages/new
  def new
    @workpackage = Workpackage.new
  end

  # GET /workpackages/1/edit
  def edit
  end

  # POST /workpackages
  # POST /workpackages.json
  def create
    @workpackage = Workpackage.new(workpackage_params)

    respond_to do |format|
      if @workpackage.save
        format.html { redirect_to '/work_breakdown_structures/'+Task.find_by(id: Subtask.find_by(id: @workpackage.subtask_id).task_id).wbs_id.to_s, notice: 'Workpackage was successfully created.' }
        format.json { render :show, status: :created, location: @workpackage }
      else
        format.html { render :new }
        format.json { render json: @workpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workpackages/1
  # PATCH/PUT /workpackages/1.json
  def update
    respond_to do |format|
      if @workpackage.update(workpackage_params)
        format.html { redirect_to @workpackage, notice: 'Workpackage was successfully updated.' }
        format.json { render :show, status: :ok, location: @workpackage }
      else
        format.html { render :edit }
        format.json { render json: @workpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workpackages/1
  # DELETE /workpackages/1.json
  def destroy
    @workpackage.destroy
    respond_to do |format|
      format.html { redirect_to '/work_breakdown_structures/'+Task.find_by(id: Subtask.find_by(id: @workpackage.subtask_id).task_id).wbs_id.to_s, notice: 'Workpackage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workpackage
      @workpackage = Workpackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workpackage_params
      params.require(:workpackage).permit(:name, :subtask_id)
    end
end
