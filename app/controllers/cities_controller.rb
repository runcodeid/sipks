class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
    authorize @cities
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    authorize @city
  end

  # GET /cities/new
  def new
    @city = City.new
    authorize @city
  end

  # GET /cities/1/edit
  def edit
    authorize @city
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)
    respond_to do |format|
      if @city.save
        format.html { redirect_to cities_path, notice: 'Berhasil Menambahkan Kabupaten/Kota.' }
        format.json { render :show, status: :created, location: @city }
      else
        # format.html { redirect_to cities_path }
        format.js {  render :action => 'notice' }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to cities_path, notice: 'Berhasil Mengubah Kabupaten/Kota.' }
        format.json { render :show, status: :ok, location: @city }
      else
        # format.html { render :edit }
        format.js {  render :action => 'notice' }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    authorize @city
    @city.logo_city.destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def city_params

      params.require(:city).permit(:city,:logo_city,:mayor,:area, :population,:sub_district,:telp,:vice_mayor,:village,:email)
    end
end
