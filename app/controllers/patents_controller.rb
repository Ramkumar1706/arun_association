class PatentsController < ApplicationController
  before_action :set_patent, only: %i[ show edit update destroy ]

  # GET /patents or /patents.json
  def index
    @patents = Patent.all
  end

  # GET /patents/1 or /patents/1.json
  def show
  end

  # GET /patents/new
  def new
    @patent = Patent.new
  end

  # GET /patents/1/edit
  def edit
  end

  # POST /patents or /patents.json
  def create
    @patent = Patent.new(patent_params)

    respond_to do |format|
      if @patent.save
        format.html { redirect_to patent_url(@patent), notice: "Patent was successfully created." }
        format.json { render :show, status: :created, location: @patent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patents/1 or /patents/1.json
  def update
    respond_to do |format|
      if @patent.update(patent_params)
        format.html { redirect_to patent_url(@patent), notice: "Patent was successfully updated." }
        format.json { render :show, status: :ok, location: @patent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patents/1 or /patents/1.json
  def destroy
    @patent.destroy

    respond_to do |format|
      format.html { redirect_to patents_url, notice: "Patent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patent
      @patent = Patent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patent_params
      params.require(:patent).permit(:customer_id, :priority_at, :priority_number, :indian_application_number, :filed_at, :title, :deadline_option, :deadline, :compiled_at)
    end
end
