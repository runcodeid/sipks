class RolePermissionsController < ApplicationController
  before_action :set_role_permission, only: [:show, :edit, :update, :destroy]

  # GET /role_permissions
  # GET /role_permissions.json
  def index
    @role = Role.friendly.find(params[:role_id])
    @role_permissions = RolePermission.where('role_id','=',@role)
    @permissions=Permission.all

    @role_permission = RolePermission.new
  end

  # GET /role_permissions/1
  # GET /role_permissions/1.json
  def show
  end

  # GET /role_permissions/new
  def new
    @role_permission = RolePermission.new
  end

  # GET /role_permissions/1/edit
  def edit
  end

  # POST /role_permissions
  # POST /role_permissions.json
  def create
    @role_permission = RolePermission.new(role_permission_params)

    respond_to do |format|
      if @role_permission.save
        format.html { redirect_to @role_permission, notice: 'Role permission was successfully created.' }
        format.json { render :show, status: :created, location: @role_permission }
      else
        format.html { render :new }
        format.json { render json: @role_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_permissions/1
  # PATCH/PUT /role_permissions/1.json
  def update
    respond_to do |format|
      if @role_permission.update(role_permission_params)
        format.html { redirect_to @role_permission, notice: 'Role permission was successfully updated.' }
        format.json { render :show, status: :ok, location: @role_permission }
      else
        format.html { render :edit }
        format.json { render json: @role_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_permissions/1
  # DELETE /role_permissions/1.json
  def destroy
    @role_permission.destroy
    respond_to do |format|
      format.html { redirect_to role_permissions_url, notice: 'Role permission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_permission
      @role_permission = RolePermission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_permission_params
      params.fetch(:role_permission, {})
    end
end
