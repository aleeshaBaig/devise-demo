class ElectricitiesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_electricity, only: %i[ show edit update destroy ]

  # GET /electricities or /electricities.json
  def index
    @electricities = Electricity.all
  end

  # GET /electricities/1 or /electricities/1.json
  def show
  end

  # GET /electricities/new
  def new
    @electricity = Electricity.new
  end

  # GET /electricities/1/edit
  def edit
  end

  # POST /electricities or /electricities.json
  def create
    @electricity = Electricity.new(electricity_params)

    respond_to do |format|
      if @electricity.save
        format.html { redirect_to electricity_url(@electricity), notice: "Electricity was successfully created." }
        format.json { render :show, status: :created, location: @electricity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electricities/1 or /electricities/1.json
  def update
    respond_to do |format|
      if @electricity.update(electricity_params)
        format.html { redirect_to electricity_url(@electricity), notice: "Electricity was successfully updated." }
        format.json { render :show, status: :ok, location: @electricity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @electricity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electricities/1 or /electricities/1.json
  def destroy
    @electricity.destroy

    respond_to do |format|
      format.html { redirect_to electricities_url, notice: "Electricity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electricity
      @electricity = Electricity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def electricity_params
      params.require(:electricity).permit(:company, :consumerId, :user_id)
    end
end
