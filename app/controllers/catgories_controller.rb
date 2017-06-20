class CatgoriesController < ApplicationController
  before_action :set_catgory, only: [:show, :edit, :update, :destroy]
  layout "backend"
  # GET /catgories
  # GET /catgories.json
  def index
    @catgories = Catgory.all
  end

  # GET /catgories/1
  # GET /catgories/1.json
  def show
  end

  # GET /catgories/new
  def new
    @catgory = Catgory.new
  end

  # GET /catgories/1/edit
  def edit
  end

  # POST /catgories
  # POST /catgories.json
  def create
    @catgory = Catgory.new(catgory_params)

    respond_to do |format|
      if @catgory.save
        format.html { redirect_to catgories_path, notice: 'Catgory was successfully created.' }
        format.json { render :show, status: :created, location: @catgory }
      else
        format.html { render :new }
        format.json { render json: @catgory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catgories/1
  # PATCH/PUT /catgories/1.json
  def update
    respond_to do |format|
      if @catgory.update(catgory_params)
        format.html { redirect_to catgories_path, notice: 'Catgory was successfully updated.' }
        format.json { render :show, status: :ok, location: @catgory }
      else
        format.html { render :edit }
        format.json { render json: @catgory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catgories/1
  # DELETE /catgories/1.json
  def destroy
    @catgory.destroy
    respond_to do |format|
      format.html { redirect_to catgories_url, notice: 'Catgory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catgory
      @catgory = Catgory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catgory_params
      params.require(:catgory).permit(:category_type,:is_active)
    end
end
