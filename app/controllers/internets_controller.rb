class InternetsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_internet, only: %i[ show edit update destroy ]

  # GET /internets or /internets.json
  def index
    @internets = Internet.all
  end

  # GET /internets/1 or /internets/1.json
  def show
  end

  # GET /internets/new
  def new
    @internet = Internet.new
  end

  # GET /internets/1/edit
  def edit
  end

  # POST /internets or /internets.json
  def create
    @internet = Internet.new(internet_params)

    respond_to do |format|
      if @internet.save
        format.html { redirect_to internet_url(@internet), notice: "Internet was successfully created." }
        format.json { render :show, status: :created, location: @internet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @internet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internets/1 or /internets/1.json
  def update
    respond_to do |format|
      if @internet.update(internet_params)
        format.html { redirect_to internet_url(@internet), notice: "Internet was successfully updated." }
        format.json { render :show, status: :ok, location: @internet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @internet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internets/1 or /internets/1.json
  def destroy
    @internet.destroy

    respond_to do |format|
      format.html { redirect_to internets_url, notice: "Internet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internet
      @internet = Internet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def internet_params
      params.require(:internet).permit(:company, :consumerId, :customer_id)
    end
end
