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
    work_breakdown_chart
  end

  # POST /work_breakdown_structures
  # POST /work_breakdown_structures.json
  def create
    @work_breakdown_structure = WorkBreakdownStructure.new(work_breakdown_structure_params)

    respond_to do |format|
      if @work_breakdown_structure.save
        format.html { redirect_to @work_breakdown_structure}
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

  def work_breakdown_chart
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Name')
    data_table.new_column('string', 'Vorgänger')
    data_table.new_column('string', 'Paket')
    
    project = Project.find_by_id(@work_breakdown_structure.p_id)
    data_table.add_rows([[project.name,'','Gesamtaufgabe']])
    tasks = Task.where(wbs_id: @work_breakdown_structure.id)
    tasks.each do |task|
      #<div style="background-color:#ff00ff">
      data_table.add_rows([[task.name, project.name,'Aufgabe']])
      #data_table.setRowProperty(3, 'style', 'background: #FF0000');
      subtasks = Subtask.where(task_id: task.id)
      subtasks.each do |subtask|
        data_table.add_rows([[subtask.name,task.name,'Teilaufgabe']])
        workpackages = Workpackage.where(subtask_id: subtask.id)
        workpackages.each do |workpackage|
          data_table.add_rows([[workpackage.name,subtask.name,'Aufgabe']])
        end
      end
    end
    options = {allowHtml:true, color:'#ffedf7'}
    @wbs_chart = GoogleVisualr::Interactive::OrgChart.new(data_table, options)
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
