class Dashboard::BFoursController < ApplicationController
  before_action :set_b_four, only: [:show, :edit, :update, :destroy]
  before_action :set_params_url

  # GET /b_fours
  # GET /b_fours.json
  def index
    @b_fours = BFour.all
  end

  # GET /b_fours/1
  # GET /b_fours/1.json
  def show
  end

  # GET /b_fours/new
  def new
    @b_four = BFour.new
  end

  # GET /b_fours/1/edit
  def edit
  end

  # POST /b_fours
  # POST /b_fours.json
  def create
    @b_four = BFour.new(b_four_params)

    respond_to do |format|
      if @b_four.save
        format.html { redirect_to @b_four, notice: 'B four was successfully created.' }
        format.json { render :show, status: :created, location: @b_four }
      else
        format.html { render :new }
        format.json { render json: @b_four.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_fours/1
  # PATCH/PUT /b_fours/1.json
  def update
    respond_to do |format|
      if @b_four.update(b_four_params)
        format.html { redirect_to dashboard_city_year_action_plan_path(@city,@year,@action_plan), notice: 'B four was successfully updated.' }
        format.json { render :show, status: :ok, location: @b_four }
      else
        format.html { redirect_to dashboard_city_year_action_plan_path(@city,@year,@action_plan), notice: @b_four.errors.full_messages }
        format.json { render json: @b_four.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_fours/1
  # DELETE /b_fours/1.json
  def destroy
    @b_four.destroy
    respond_to do |format|
      format.html { redirect_to b_fours_url, notice: 'B four was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_four
      @b_four = BFour.friendly.find(params[:id])
    end

    def set_params_url
      @action_plan = ActionPlan.friendly.find(params[:action_plan_id])
      @city=City.friendly.find(params[:city_id])
      @year = Year.friendly.find(params[:year_id])
      if params[:b_four].blank?
        redirect_to dashboard_city_year_action_plan_path(@city,@year,@action_plan), notice: 'B four was failed update cause no file you attached.' 
      end
    end


    # Only allow a list of trusted parameters through.
    def b_four_params
      
        params.require(:b_four).permit(:notulen, :daftar_hadir, :foto_kegiatan, :materi, :scan_document, :scan_document_ttd, :foto_atau_materi, :delete_daftar_hadir,:delete_notulen,:delete_foto_kegiatan, :delete_materi, :delete_scan_document, :delete_scan_document_ttd, :delete_foto_atau_materi)
    end
end
