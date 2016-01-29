class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :edit, :update, :destroy]

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
  end

  # GET /rounds/new
  def new
    @round = Round.new
  end

  # GET /rounds/1/edit
  def edit
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = Round.new(round_params)

    respond_to do |format|
      if @round.save

        @formTemplate = FormTemplate.new(round_id: @round.id)
        @formTemplate.save
        delphiEstimation = DelphiEstimation.find_by_id(@round.delphiEstimation_id)
        project = Project.find_by_id(delphiEstimation.p_id)
        wbs = WorkBreakdownStructure.find_by p_id: project.id
        tasks = Task.where(wbs_id: wbs.id)
        tasks.each do |task|
          subtasks = Subtask.where(task_id: task.id)
          subtasks.each do |subtask|
            workpackages = Workpackage.where(subtask_id: subtask.id)
            workpackages.each do |workpackage|
              EstimationTemplate.new(form_template_id: @formTemplate.id, workpackage_id: workpackage.id, comment: '').save
            end
          end
        end

        format.html { redirect_to @formTemplate, notice: 'Runde wurde erfolgreich angelegt.' }
        format.json { render :show, status: :created, location: @round }
      else
        format.html { render :new }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    respond_to do |format|
      if @round.update(:closed => true)
        format.html { redirect_to DelphiEstimation.find_by_id(@round.delphiEstimation_id), notice: 'Runde wurde erfolgreich geschlossen' }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @round.destroy
    respond_to do |format|
      format.html { redirect_to DelphiEstimation.find_by_id(@round.delphiEstimation_id), notice: 'Round wurde erfolgreich gelöscht' }
      format.json { head :no_content }
    end
  end


  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round.destroy
    respond_to do |format|
      format.html { redirect_to DelphiEstimation.find_by_id(@round.delphiEstimation_id), notice: 'Round wurde erfolgreich gelöscht' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_params
      params.require(:round).permit(:delphiEstimation_id, :count, :closed)
    end
end
