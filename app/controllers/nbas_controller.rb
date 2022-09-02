class NbasController < ApplicationController
  before_action :set_nba, only: %i[ show edit update destroy ]

  # GET /nbas or /nbas.json
  def index
    @nbas = Nba.all
  end

  # GET /nbas/1 or /nbas/1.json
  def show
  end

  # GET /nbas/new
  def new
    @nba = Nba.new
  end

  # GET /nbas/1/edit
  def edit
  end

  # POST /nbas or /nbas.json
  def create
    @nba = Nba.new(nba_params)

    respond_to do |format|
      if @nba.save
        format.html { redirect_to nba_url(@nba), notice: "Nba was successfully created." }
        format.json { render :show, status: :created, location: @nba }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nbas/1 or /nbas/1.json
  def update
    respond_to do |format|
      if @nba.update(nba_params)
        format.html { redirect_to nba_url(@nba), notice: "Nba was successfully updated." }
        format.json { render :show, status: :ok, location: @nba }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nbas/1 or /nbas/1.json
  def destroy
    @nba.destroy

    respond_to do |format|
      format.html { redirect_to nbas_url, notice: "Nba was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nba
      @nba = Nba.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nba_params
      params.require(:nba).permit(:customer_id, :nba_number, :abs_at, :indian_application_number, :filed_at, :title, :deadline_option, :deadline, :compiled_at)
    end
end
