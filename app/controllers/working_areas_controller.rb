class WorkingAreasController < ApplicationController
  before_action :set_working_area, only: [:show, :edit, :update, :destroy]

  # GET /working_areas
  # GET /working_areas.json
  def index
    @working_areas = WorkingArea.all
  end

  # GET /working_areas/1
  # GET /working_areas/1.json
  def show
  end

  # GET /working_areas/new
  def new
    @working_area = WorkingArea.new
  end

  # GET /working_areas/1/edit
  def edit
  end

  # POST /working_areas
  # POST /working_areas.json
  def create
    @working_area = WorkingArea.new(working_area_params)

    respond_to do |format|
      if @working_area.save
        format.html { redirect_to @working_area, notice: 'Working area was successfully created.' }
        format.json { render :show, status: :created, location: @working_area }
      else
        format.html { render :new }
        format.json { render json: @working_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_areas/1
  # PATCH/PUT /working_areas/1.json
  def update
    respond_to do |format|
      if @working_area.update(working_area_params)
        format.html { redirect_to @working_area, notice: 'Working area was successfully updated.' }
        format.json { render :show, status: :ok, location: @working_area }
      else
        format.html { render :edit }
        format.json { render json: @working_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_areas/1
  # DELETE /working_areas/1.json
  def destroy
    @working_area.destroy
    respond_to do |format|
      format.html { redirect_to working_areas_url, notice: 'Working area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_area
      @working_area = WorkingArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def working_area_params
      params.require(:working_area).permit(:name, :active)
    end
end
