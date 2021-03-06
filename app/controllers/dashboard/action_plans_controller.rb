class Dashboard::ActionPlansController < ApplicationController
  before_action :set_action_plan, only: [:show, :edit, :update, :destroy]
  before_action :set_params_url
  before_action :set_b_four, only: [:show]
  before_action :set_b_eight, only: [:show]
  before_action :set_b_twelf, only: [:show]
  
  # GET /action_plans
  # GET /action_plans.json


  def index
    
    @action_plan = ActionPlan.new
    if params[:city_id].nil?
      @action_plans =@year.action_plans.where('city_id = ?',current_user.city.id)
    else
      @action_plans =@year.action_plans.where('city_id = ?',City.friendly.find(params[:city_id]))

    end

    authorize @action_plans
  end

  # GET /action_plans/1
  # GET /action_plans/1.json
  def show
    @b_four = BFour.find_by action_plan: @action_plan

    authorize @action_plan

  end

  # GET /action_plans/new
  def new
    @action_plan = ActionPlan.new
    authorize @action_plan
  end

  # GET /action_plans/1/edit
  def edit
    authorize @action_plan
  end

  # POST /action_plans
  # POST /action_plans.json
  def create
    @action_plan = ActionPlan.new(action_plan_params)

    respond_to do |format|

      @action_plan.city= current_user.city
      @action_plan.year= @year
      if @action_plan.save
        @b_four = BFour.new(b_jibun_params)
        @b_four.action_plan=@action_plan
        @b_four.save

        @b_eight= BEight.new(b_jibun_params)
        @b_eight.action_plan=@action_plan
        @b_eight.save

        @b_twelf = BTwelf.new(b_jibun_params)
        @b_twelf.action_plan=@action_plan
        @b_twelf.save

        format.html { redirect_to dashboard_city_year_action_plan_path(@city,@year,@action_plan), notice: 'Action plan was successfully created.' }
        format.json { render :show, status: :created, location: @action_plan }

      else
        format.html { render :new }
        format.json { render json: @action_plan.errors, status: :unprocessable_entity }
      end
    end

    
  end

  # PATCH/PUT /action_plans/1
  # PATCH/PUT /action_plans/1.json
  def update
    respond_to do |format|
      if @action_plan.update(action_plan_params)
        format.html { redirect_to @action_plan, notice: 'Action plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_plan }
      else
        format.html { render :edit }
        format.json { render json: @action_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_plans/1
  # DELETE /action_plans/1.json
  def destroy
    authorize @action_plan
    @action_plan.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_city_year_action_plans_path(@city,@year), notice: 'Action plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_action_plan
      @action_plan = ActionPlan.friendly.find(params[:id])
    end

    # Only allow alist of trusted parameters through.
    # Use callbacks to share common setup or constraints between actions.
    def action_plan_params
      params.require(:action_plan).permit(:city_id, :year_id, :code_action_plans, :action_plan, :responsible, :description)

    end

    def b_jibun_params
      params.require(:action_plan).permit(:notulen, :daftar_hadir, :foto_kegiatan, :materi, :scan_document, :scan_document_ttd, :foto_atau_materi)
    end

    def set_params_url
      @city = City.friendly.find(params[:city_id])
      @year = Year.friendly.find(params[:year_id])

    end

    def set_b_four
      @b_four = BFour.find_by action_plan: @action_plan
    end

    def set_b_eight
      @b_eight = BEight.find_by action_plan: @action_plan
    end

    def set_b_twelf
      @b_twelf = BTwelf.find_by action_plan: @action_plan
   end





end
