class BTwelvesController < ApplicationController
  before_action :set_b_twelf, only: [:show, :edit, :update, :destroy]
  before_action :set_params_url

  # GET /b_twelves
  # GET /b_twelves.json
  def index
    @b_twelves = BTwelf.all
  end

  # GET /b_twelves/1
  # GET /b_twelves/1.json
  def show
  end

  # GET /b_twelves/new
  def new
    @b_twelf = BTwelf.new
  end

  # GET /b_twelves/1/edit
  def edit
  end

  # POST /b_twelves
  # POST /b_twelves.json
  def create
    @b_twelf = BTwelf.new(b_twelf_params)

    respond_to do |format|
      if @b_twelf.save
        format.html { redirect_to @b_twelf, notice: 'B twelf was successfully created.' }
        format.json { render :show, status: :created, location: @b_twelf }
      else
        format.html { render :new }
        format.json { render json: @b_twelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_twelves/1
  # PATCH/PUT /b_twelves/1.json
  def update
    respond_to do |format|
      if @b_twelf.update(b_twelf_params)
        format.html { redirect_to year_action_plan_path(@year,@action_plan), notice: 'B twelf was successfully updated.' }
        format.json { render :show, status: :ok, location: @b_twelf }
      else
        format.html { render :edit }
        format.json { render json: @b_twelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_twelves/1
  # DELETE /b_twelves/1.json
  def destroy
    @b_twelf.destroy
    respond_to do |format|
      format.html { redirect_to b_twelves_url, notice: 'B twelf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b_twelf
      @b_twelf = BTwelf.friendly.find(params[:id])
    end

    def set_params_url
      @action_plan = ActionPlan.friendly.find(params[:action_plan_id])
      @year = Year.friendly.find(params[:year_id])
      if params[:b_twelf].blank?
        redirect_to year_action_plan_path(@year,@action_plan), notice: 'B four was failed update cause no file you attached.' 
      end
    end


    # Only allow a list of trusted parameters through.
    def b_twelf_params
      
        params.require(:b_twelf).permit(:notulen, :daftar_hadir, :foto_kegiatan, :materi, :scan_document, :scan_document_ttd, :foto_atau_materi, :delete_daftar_hadir,:delete_notulen,:delete_foto_kegiatan, :delete_materi, :delete_scan_document, :delete_scan_document_ttd, :delete_foto_atau_materi)
    end
end
