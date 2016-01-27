class RamEntriesController < ApplicationController
  before_action :set_ram_entry, only: [:show, :edit, :update, :destroy]

  # GET /ram_entries
  # GET /ram_entries.json
  def index
    @ram_entries = RamEntry.all
  end

  # GET /ram_entries/1
  # GET /ram_entries/1.json
  def show
  end

  # GET /ram_entries/new
  def new
    @ram_entry = RamEntry.new
  end

  # GET /ram_entries/1/edit
  def edit
  end

  # POST /ram_entries
  # POST /ram_entries.json
  def create
    @ram_entry = RamEntry.new(ram_entry_params)

    respond_to do |format|
      if @ram_entry.save
        format.html { redirect_to @ram_entry, notice: 'Ram entry was successfully created.' }
        format.json { render :show, status: :created, location: @ram_entry }
      else
        format.html { render :new }
        format.json { render json: @ram_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ram_entries/1
  # PATCH/PUT /ram_entries/1.json
  def update
    respond_to do |format|
      if @ram_entry.update(ram_entry_params)
        format.html { redirect_to @ram_entry, notice: 'Ram entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @ram_entry }
      else
        format.html { render :edit }
        format.json { render json: @ram_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ram_entries/1
  # DELETE /ram_entries/1.json
  def destroy
    @ram_entry.destroy
    respond_to do |format|
      format.html { redirect_to ram_entries_url, notice: 'Ram entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ram_entry
      @ram_entry = RamEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ram_entry_params
      params.require(:ram_entry).permit(:ram_id, :workpackage_id, :component_id, :resource_id)
    end
end
