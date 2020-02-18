class ActionPlansController < ApplicationController
  before_action :set_action_plan, only: [:show, :edit, :update, :destroy]
  # before_action :set_params_url
  # GET /action_plans
  # GET /action_plans.json
  def index
    @action_plans =ActionPlan.all
  end

  # GET /action_plans/1
  # GET /action_plans/1.json
  def show
  end

  # GET /action_plans/new
  def new
    @action_plan = ActionPlan.new
  end

  # GET /action_plans/1/edit
  def edit
  end

  # POST /action_plans
  # POST /action_plans.json
  def create
    @action_plan = ActionPlan.new(action_plan_params)

    respond_to do |format|
      @action_plan.city=City.first
      @action_plan.year=Year.first
      if @action_plan.save
        @b_four = BFour.new(b_four_params)
        # @b_four.notulen=nil
        # @b_four.daftar_hadir=nil
        # @b_four.foto_kegiatan=nil
        # @b_four.materi=nil
        # @b_four.scan_document=nil
        # @b_four.scan_document_ttd=nil
        # @b_four.foto_atau_materi=nil
        # @b_four.action_plan=@action_plan
        @b_four.save

        format.html { redirect_to @action_plan, notice: 'Action plan was successfully created.' }
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
    @action_plan.destroy
    respond_to do |format|
      format.html { redirect_to action_plans_url, notice: 'Action plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_plan
      @action_plan = ActionPlan.friendly.find(params[:id])
      # @b_four = BFour.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def action_plan_params
      params.require(:action_plan).permit(:city_id, :year_id, :code_action_plans, :action_plan)

    end

    def b_four_params
      params.require(:action_plan).permit(:notulen, :daftar_hadir, :foto_kegiatan, :materi, :scan_document, :scan_document_ttd, :foto_atau_materi)
    end


    # def set_params_url
    #   @city = City.first
    #   @year = Year.first
    # end

end
