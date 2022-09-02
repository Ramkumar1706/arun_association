class TrademarksController < ApplicationController
  before_action :set_trademark, only: %i[ show edit update destroy ]

  # GET /trademarks or /trademarks.json
  def index
    @trademarks = Trademark.all
  end

  # GET /trademarks/1 or /trademarks/1.json
  def show
  end

  # GET /trademarks/new
  def new
    @trademark = Trademark.new
  end

  # GET /trademarks/1/edit
  def edit
  end

  # POST /trademarks or /trademarks.json
  def create
    @trademark = Trademark.new(trademark_params)

    respond_to do |format|
      if @trademark.save
        format.html { redirect_to trademark_url(@trademark), notice: "Trademark was successfully created." }
        format.json { render :show, status: :created, location: @trademark }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trademark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trademarks/1 or /trademarks/1.json
  def update
    respond_to do |format|
      if @trademark.update(trademark_params)
        format.html { redirect_to trademark_url(@trademark), notice: "Trademark was successfully updated." }
        format.json { render :show, status: :ok, location: @trademark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trademark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trademarks/1 or /trademarks/1.json
  def destroy
    @trademark.destroy

    respond_to do |format|
      format.html { redirect_to trademarks_url, notice: "Trademark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trademark
      @trademark = Trademark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trademark_params
      params.require(:trademark).permit(:customer_id, :priority_at, :priority_number, :indian_application_number, :filed_at, :title, :deadline_option, :deadline, :compiled_at)
    end
end
