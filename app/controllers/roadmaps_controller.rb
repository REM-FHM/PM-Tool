class RoadmapsController < ApplicationController
  before_action :set_roadmap, only: [:show, :edit, :update, :destroy]

  # GET /roadmaps
  # GET /roadmaps.json
  def index
    @roadmaps = Roadmap.all
  end

  def timeline
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Name' )
    data_table.new_column('date', 'Start' )
    data_table.new_column('date', 'End' )

    milestones = Milestone.where(roadmap_id: @roadmap.id)
    milestones = milestones.sort_by &:endtime
    milestones.each do |milestone|
    data_table.add_row([ Workpackage.find(milestone.workpackage_id).name, Date.current()+milestone.endtime, Date.current()+milestone.endtime+1 ])
    end
    option = {height: 500}
    @timeline = GoogleVisualr::Interactive::Timeline.new(data_table, option)
  end

  # GET /roadmaps/1
  # GET /roadmaps/1.json
  def show
    timeline
  end

  # GET /roadmaps/new
  def new
    @roadmap = Roadmap.new
  end

  # GET /roadmaps/1/edit
  def edit
  end

  # POST /roadmaps
  # POST /roadmaps.json
  def create
    @roadmap = Roadmap.new(roadmap_params)

    respond_to do |format|
      if @roadmap.save
        format.html { redirect_to @roadmap, notice: 'Roadmap was successfully created.' }
        format.json { render :show, status: :created, location: @roadmap }
      else
        format.html { render :new }
        format.json { render json: @roadmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roadmaps/1
  # PATCH/PUT /roadmaps/1.json
  def update
    respond_to do |format|
      if @roadmap.update(roadmap_params)
        format.html { redirect_to @roadmap, notice: 'Roadmap was successfully updated.' }
        format.json { render :show, status: :ok, location: @roadmap }
      else
        format.html { render :edit }
        format.json { render json: @roadmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roadmaps/1
  # DELETE /roadmaps/1.json
  def destroy
    @roadmap.destroy
    respond_to do |format|
      format.html { redirect_to roadmaps_url, notice: 'Roadmap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roadmap
      @roadmap = Roadmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roadmap_params
      params.require(:roadmap).permit(:p_id)
    end
end
