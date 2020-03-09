class Dashboard::YearsController < ApplicationController
  before_action :set_dashboard_year, only: [:show, :edit, :update, :destroy]

  # GET /dashboard/years
  # GET /dashboard/years.json
  def index
    @dashboard_years = Year.all
    if params[:city_id] != nil
      @city_param_url = City.friendly.find(params[:city_id])
    else
      @city_param_url = City.friendly.find(current_user.city.slug)
    end
  end

  # GET /dashboard/years/1
  # GET /dashboard/years/1.json
  def show
  end

  # GET /dashboard/years/new
  def new
    @dashboard_year = Year.new
  end

  # GET /dashboard/years/1/edit
  def edit
  end

  # POST /dashboard/years
  # POST /dashboard/years.json
  def create
    @dashboard_year = Dashboard::Year.new(dashboard_year_params)

    respond_to do |format|
      if @dashboard_year.save
        format.html { redirect_to @dashboard_year, notice: 'Year was successfully created.' }
        format.json { render :show, status: :created, location: @dashboard_year }
      else
        format.html { render :new }
        format.json { render json: @dashboard_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboard/years/1
  # PATCH/PUT /dashboard/years/1.json
  def update
    respond_to do |format|
      if @dashboard_year.update(dashboard_year_params)
        format.html { redirect_to @dashboard_year, notice: 'Year was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashboard_year }
      else
        format.html { render :edit }
        format.json { render json: @dashboard_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard/years/1
  # DELETE /dashboard/years/1.json
  def destroy
    @dashboard_year.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_years_url, notice: 'Year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_year
      @dashboard_year = Dashboard::Year.friendly.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def dashboard_year_params
      params.require(:dashboard_year).permit(:year)
    end
end
