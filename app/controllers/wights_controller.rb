class WightsController < ApplicationController
  before_action :set_wight, only: [:show, :edit, :update, :destroy]

  # GET /wights
  # GET /wights.json
  def index
    @wights = Wight.all
  end

  # GET /wights/1
  # GET /wights/1.json
  def show
  end

  # GET /wights/new
  def new
    @wight = Wight.new
  end

  # GET /wights/1/edit
  def edit
  end

  # POST /wights
  # POST /wights.json
  def create
    @wight = Wight.new(wight_params)

    respond_to do |format|
      if @wight.save
        format.html { redirect_to @wight, notice: 'Wight was successfully created.' }
        format.json { render :show, status: :created, location: @wight }
      else
        format.html { render :new }
        format.json { render json: @wight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wights/1
  # PATCH/PUT /wights/1.json
  def update
    respond_to do |format|
      if @wight.update(wight_params)
        format.html { redirect_to @wight, notice: 'Wight was successfully updated.' }
        format.json { render :show, status: :ok, location: @wight }
      else
        format.html { render :edit }
        format.json { render json: @wight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wights/1
  # DELETE /wights/1.json
  def destroy
    @wight.destroy
    respond_to do |format|
      format.html { redirect_to wights_url, notice: 'Wight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wight
      @wight = Wight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wight_params
      params.require(:wight).permit(:user_id, :wegiht)
    end
end
