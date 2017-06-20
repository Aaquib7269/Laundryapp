class OurservicesController < ApplicationController
  before_action :set_ourservice, only: [:show, :edit, :update, :destroy]
  layout "backend"
  # GET /ourservices
  # GET /ourservices.json
  def index
    @ourservices = Ourservice.all
    @abc = Ourservice.new
  end

  # GET /ourservices/1
  # GET /ourservices/1.json
  def show
  end

  # GET /ourservices/new
  def new
    @ourservice = Ourservice.new
  end

  # GET /ourservices/1/edit
  def edit
  end

  # POST /ourservices
  # POST /ourservices.json
  def create
    @ourservice = Ourservice.new(ourservice_params)

    respond_to do |format|
      if @ourservice.save
        format.html { redirect_to ourservices_path, notice: 'Ourservice was successfully created.' }
        format.json { render :show, status: :created, location: @ourservice }
      else
        format.html { render :new }
        format.json { render json: @ourservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ourservices/1
  # PATCH/PUT /ourservices/1.json
  def update
    respond_to do |format|
      if @ourservice.update(ourservice_params)
        format.html { redirect_to ourservices_path, notice: 'Ourservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @ourservice }
      else
        format.html { render :edit }
        format.json { render json: @ourservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ourservices/1
  # DELETE /ourservices/1.json
  def destroy
    @ourservice.destroy
    respond_to do |format|
      format.html { redirect_to ourservices_url, notice: 'Ourservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ourservice
      @ourservice = Ourservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ourservice_params
      params.require(:ourservice).permit(:service_type, :cost,:a)
    end
end
