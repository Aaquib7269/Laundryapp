class WorkstaionsController < ApplicationController
  before_action :set_workstaion, only: [:show, :edit, :update, :destroy]
  layout "backend"
  # GET /workstaions
  # GET /workstaions.json
  def index
    @workstaions = Workstaion.all
  end

  # GET /workstaions/1
  # GET /workstaions/1.json
  def show
  end

  # GET /workstaions/new
  def new
    @workstaion = Workstaion.new
  end

  # GET /workstaions/1/edit
  def edit
  end

  # POST /workstaions
  # POST /workstaions.json
  def create
    @workstaion = Workstaion.new(workstaion_params)

    respond_to do |format|
      if @workstaion.save
        format.html { redirect_to workstaions_path, notice: 'Workstaion was successfully created.' }
        format.json { render :show, status: :created, location: @workstaion }
      else
        format.html { render :new }
        format.json { render json: @workstaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workstaions/1
  # PATCH/PUT /workstaions/1.json
  def update
    respond_to do |format|
      if @workstaion.update(workstaion_params)
        format.html { redirect_to workstaions_path, notice: 'Workstaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @workstaion }
      else
        format.html { render :edit }
        format.json { render json: @workstaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workstaions/1
  # DELETE /workstaions/1.json
  def destroy
    @workstaion.destroy
    respond_to do |format|
      format.html { redirect_to workstaions_url, notice: 'Workstaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workstaion
      @workstaion = Workstaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workstaion_params
      params.require(:workstaion).permit(:station_name,:is_active)
    end
end
