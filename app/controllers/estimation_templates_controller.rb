class EstimationTemplatesController < ApplicationController
  before_action :set_estimation_template, only: [:show, :edit, :update, :destroy]

  # GET /estimation_templates
  # GET /estimation_templates.json
  def index
    @estimation_templates = EstimationTemplate.all
  end

  # GET /estimation_templates/1
  # GET /estimation_templates/1.json
  def show
  end

  # GET /estimation_templates/new
  def new
    @estimation_template = EstimationTemplate.new
  end

  # GET /estimation_templates/1/edit
  def edit
  end

  # POST /estimation_templates
  # POST /estimation_templates.json
  def create
    @estimation_template = EstimationTemplate.new(estimation_template_params)

    respond_to do |format|
      if @estimation_template.save
        format.html { redirect_to @estimation_template, notice: 'Estimation template was successfully created.' }
        format.json { render :show, status: :created, location: @estimation_template }
      else
        format.html { render :new }
        format.json { render json: @estimation_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estimation_templates/1
  # PATCH/PUT /estimation_templates/1.json
  def update
    respond_to do |format|
      if @estimation_template.update(estimation_template_params)
        format.html { redirect_to @estimation_template, notice: 'Estimation template was successfully updated.' }
        format.json { render :show, status: :ok, location: @estimation_template }
      else
        format.html { render :edit }
        format.json { render json: @estimation_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estimation_templates/1
  # DELETE /estimation_templates/1.json
  def destroy
    @estimation_template.destroy
    respond_to do |format|
      format.html { redirect_to estimation_templates_url, notice: 'Estimation template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estimation_template
      @estimation_template = EstimationTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estimation_template_params
      params.require(:estimation_template).permit(:form_template_id, :workpackage_id, :comment)
    end
end
