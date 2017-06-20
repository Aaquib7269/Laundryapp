class PayrequestsController < ApplicationController
  before_action :set_payrequest, only: [:show, :edit, :update, :destroy]
  layout "backend"
  # GET /payrequests
  # GET /payrequests.json
  def index
    @payrequests = Payrequest.all
  end

  # GET /payrequests/1
  # GET /payrequests/1.json
  def show
  end

  # GET /payrequests/new
  def new
    @payrequest = Payrequest.new
  end

  # GET /payrequests/1/edit
  def edit
  end

  # POST /payrequests
  # POST /payrequests.json
  def create
    @payrequest = Payrequest.new(payrequest_params)

    respond_to do |format|
      if @payrequest.save
        format.html { redirect_to payrequests_path, notice: 'Payrequest was successfully created.' }
        format.json { render :show, status: :created, location: @payrequest }
      else
        format.html { render :new }
        format.json { render json: @payrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payrequests/1
  # PATCH/PUT /payrequests/1.json
  def update
    respond_to do |format|
      if @payrequest.update(payrequest_params)
        format.html { redirect_to payrequests_path, notice: 'Payrequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @payrequest }
      else
        format.html { render :edit }
        format.json { render json: @payrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payrequests/1
  # DELETE /payrequests/1.json
  def destroy
    @payrequest.destroy
    respond_to do |format|
      format.html { redirect_to payrequests_url, notice: 'Payrequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payrequest
      @payrequest = Payrequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payrequest_params
      params.require(:payrequest).permit(:Date, :Time,:customer_id,:is_active)
    end
end
