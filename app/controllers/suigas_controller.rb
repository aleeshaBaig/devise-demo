class SuigasController < ApplicationController
  before_action :authenticate_user!

  before_action :set_suiga, only: %i[ show edit update destroy ]

  # GET /suigas or /suigas.json
  def index
    @suigas = Suiga.all
  end

  # GET /suigas/1 or /suigas/1.json
  def show
  end

  # GET /suigas/new
  def new
    @suiga = Suiga.new
  end

  # GET /suigas/1/edit
  def edit
  end

  # POST /suigas or /suigas.json
  def create
    @suiga = Suiga.new(suiga_params)

    respond_to do |format|
      if @suiga.save
        format.html { redirect_to suiga_url(@suiga), notice: "Suiga was successfully created." }
        format.json { render :show, status: :created, location: @suiga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suigas/1 or /suigas/1.json
  def update
    respond_to do |format|
      if @suiga.update(suiga_params)
        format.html { redirect_to suiga_url(@suiga), notice: "Suiga was successfully updated." }
        format.json { render :show, status: :ok, location: @suiga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suiga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suigas/1 or /suigas/1.json
  def destroy
    @suiga.destroy

    respond_to do |format|
      format.html { redirect_to suigas_url, notice: "Suiga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suiga
      @suiga = Suiga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suiga_params
      params.require(:suiga).permit(:company, :consumerId, :customer_id)
    end
end
