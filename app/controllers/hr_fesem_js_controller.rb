class HrFesemJsController < ApplicationController
  before_action :set_hr_fesem_j, only: %i[ show edit update destroy ]

  # GET /hr_fesem_js or /hr_fesem_js.json
  def index
    @hr_fesem_js = HrFesemJ.all
  end

  # GET /hr_fesem_js/1 or /hr_fesem_js/1.json
  def show
  end

  # GET /hr_fesem_js/new
  def new
    @hr_fesem_j = HrFesemJ.new
  end

  # GET /hr_fesem_js/1/edit
  def edit
  end

  # POST /hr_fesem_js or /hr_fesem_js.json
  def create
    @hr_fesem_j = HrFesemJ.new(hr_fesem_j_params)

    respond_to do |format|
      if @hr_fesem_j.save
        format.html { redirect_to hr_fesem_j_url(@hr_fesem_j), notice: "Hr fesem j was successfully created." }
        format.json { render :show, status: :created, location: @hr_fesem_j }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hr_fesem_j.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr_fesem_js/1 or /hr_fesem_js/1.json
  def update
    respond_to do |format|
      if @hr_fesem_j.update(hr_fesem_j_params)
        format.html { redirect_to hr_fesem_j_url(@hr_fesem_j), notice: "Hr fesem j was successfully updated." }
        format.json { render :show, status: :ok, location: @hr_fesem_j }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hr_fesem_j.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr_fesem_js/1 or /hr_fesem_js/1.json
  def destroy
    @hr_fesem_j.destroy

    respond_to do |format|
      format.html { redirect_to hr_fesem_js_url, notice: "Hr fesem j was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_fesem_j
      @hr_fesem_j = HrFesemJ.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hr_fesem_j_params
      params.require(:hr_fesem_j).permit(:sample, :composition, :stype, :sphase, :measurement, :eds_required, :toxic, :conducting, :more)
    end
end