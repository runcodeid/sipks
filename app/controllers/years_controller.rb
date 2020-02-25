class YearsController < ApplicationController
  before_action :set_year, only: [:show, :edit, :update, :destroy]

  # GET /years
  # GET /years.json
  def index
    @years = Year.all
    if params[:city_id] != nil
      @city_param_url = City.friendly.find(params[:city_id])
    end

    authorize @years
  end

  # GET /years/1
  # GET /years/1.json
  def show
    authorize @year
  end

  # GET /years/new
  def new
    @year = Year.new
    authorize @year
  end

  # GET /years/1/edit
  def edit
    authorize @year
  end

  # POST /years
  # POST /years.json
  def create
    @year = Year.new(year_params)

    respond_to do |format|
      if @year.save
        format.html { redirect_to years_path(), notice: 'Berhasil Menambahkan Tahun.' }
        format.json { render :show, status: :created, location: @year }
      else
        format.html { render :new }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /years/1
  # PATCH/PUT /years/1.json
  def update
    respond_to do |format|
      if @year.update(year_params)
        format.html { redirect_to years_path(), notice: 'Berhasil Mengubah Tahun.' }
        format.json { render :show, status: :ok, location: @year }
      else
        format.html { render :edit }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1
  # DELETE /years/1.json
  def destroy
    authorize @year
    @year.destroy
    respond_to do |format|
      format.html { redirect_to years_url, notice: 'Year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year
      @year = Year.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def year_params
      params.require(:year).permit(:year)
    end
end
