class Dashboard::CitiesController < ApplicationController
  before_action :set_dashboard_city, only: [:show, :edit, :update, :destroy]

  # GET /dashboard/cities
  # GET /dashboard/cities.json
  def index
    if policy(:dashboard_city).index?

    else
      p "=" * 100
      redirect_to dashboard_city_years_path(current_user.city.slug)
    end
    @dashboard_cities = City.all
    authorize @dashboard_cities
  end

  # GET /dashboard/cities/1
  # GET /dashboard/cities/1.json
  def show
    @dashboard_years = Year.all
    
  end

  # GET /dashboard/cities/new
  def new
    @dashboard_city = City.new
    authorize @dashboard_city
  end

  # GET /dashboard/cities/1/edit
  def edit
    authorize @dashboard_city
  end

  # POST /dashboard/cities
  # POST /dashboard/cities.json
  def create
    @dashboard_city = City.new(dashboard_city_params)

    respond_to do |format|
      if @dashboard_city.save
        format.html { redirect_to @dashboard_city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @dashboard_city }
      else
        format.html { render :new }
        format.json { render json: @dashboard_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboard/cities/1
  # PATCH/PUT /dashboard/cities/1.json
  def update

    authorize @dashboard_city
    respond_to do |format|
      if @dashboard_city.update(dashboard_city_params)
        format.html { redirect_to @dashboard_city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashboard_city }
      else
        format.html { render :edit }
        format.json { render json: @dashboard_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard/cities/1
  # DELETE /dashboard/cities/1.json
  def destroy
    authorize @dashboard_city
    @dashboard_city.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_city
      @dashboard_city = City.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashboard_city_params
      params.require(:dashboard_city).permit(:mayor,:population,:sub_district,:telp,:vice_mayor,:village,:email)
    end
end
