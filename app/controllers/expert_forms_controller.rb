class ExpertFormsController < ApplicationController
  before_action :set_expert_form, only: [:show, :edit, :update, :destroy]

  # GET /expert_forms
  # GET /expert_forms.json
  def index
    @expert_forms = ExpertForm.all
  end

  # GET /expert_forms/1
  # GET /expert_forms/1.json
  def show
  end

  # GET /expert_forms/new
  def new
    @expert_form = ExpertForm.new
  end

  # GET /expert_forms/1/edit
  def edit
  end

  # POST /expert_forms
  # POST /expert_forms.json
  def create
    @expert_form = ExpertForm.new(expert_form_params)

    respond_to do |format|
      if @expert_form.save
        format.html { redirect_to @expert_form, notice: 'Expert form was successfully created.' }
        format.json { render :show, status: :created, location: @expert_form }
      else
        format.html { render :new }
        format.json { render json: @expert_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expert_forms/1
  # PATCH/PUT /expert_forms/1.json
  def update
    respond_to do |format|
      if @expert_form.update(expert_form_params)
        format.html { redirect_to @expert_form, notice: 'Expert form was successfully updated.' }
        format.json { render :show, status: :ok, location: @expert_form }
      else
        format.html { render :edit }
        format.json { render json: @expert_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expert_forms/1
  # DELETE /expert_forms/1.json
  def destroy
    @expert_form.destroy
    respond_to do |format|
      format.html { redirect_to expert_forms_url, notice: 'Expert form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expert_form
      @expert_form = ExpertForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expert_form_params
      params.require(:expert_form).permit(:round_id, :expertName)
    end
end
