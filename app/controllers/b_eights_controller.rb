class BEightsController < ApplicationController
  before_action :set_b_eight, only: [:show, :edit, :update, :destroy]
  before_action :set_params_url
  # GET /b_eights
  # GET /b_eights.json
  def index
    @b_eights = BEight.all
  end

  # GET /b_eights/1
  # GET /b_eights/1.json
  def show
  end

  # GET /b_eights/new
  def new
    @b_eight = BEight.new
  end

  # GET /b_eights/1/edit
  def edit
  end

  # POST /b_eights
  # POST /b_eights.json
  def create
    @b_eight = BEight.new(b_eight_params)

    respond_to do |format|
      if @b_eight.save
        format.html { redirect_to @b_eight, notice: 'B eight was successfully created.' }
        format.json { render :show, status: :created, location: @b_eight }
      else
        format.html { render :new }
        format.json { render json: @b_eight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_eights/1
  # PATCH/PUT /b_eights/1.json
  def update
    respond_to do |format|
      if @b_eight.update(b_eight_params)
        format.html { redirect_to year_action_plan_path(@year,@action_plan), notice: 'B eight was successfully updated.' }
        format.json { render :show, status: :ok, location: @b_eight }
      else
        format.html { render :edit }
        format.json { render json: @b_eight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_eights/1
  # DELETE /b_eights/1.json
  def destroy
    @b_eight.destroy
    respond_to do |format|
      format.html { redirect_to b_eights_url, notice: 'B eight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_eight
      @b_eight = BEight.friendly.find(params[:id])
    end

    def set_params_url
      @action_plan = ActionPlan.friendly.find(params[:action_plan_id])
      @year = Year.friendly.find(params[:year_id])
      if params[:b_eight].blank?
        redirect_to year_action_plan_path(@year,@action_plan), notice: 'B four was failed update cause no file you attached.' 
      end
    end

    # Only allow a list of trusted parameters through.
    def b_eight_params
      params.require(:b_eight).permit(:notulen, :daftar_hadir, :foto_kegiatan, :materi, :scan_document, :scan_document_ttd, :foto_atau_materi, :delete_daftar_hadir,:delete_notulen,:delete_foto_kegiatan, :delete_materi, :delete_scan_document, :delete_scan_document_ttd, :delete_foto_atau_materi)
    end

    
end
