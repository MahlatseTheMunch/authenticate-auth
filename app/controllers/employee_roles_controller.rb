class EmployeeRolesController < ApplicationController
  before_action :set_employee_role, only: %i[ show edit update destroy ]

  # GET /employee_roles or /employee_roles.json
  def index
    @employee_roles = EmployeeRole.all
  end

  # GET /employee_roles/1 or /employee_roles/1.json
  def show
  end

  # GET /employee_roles/new
  def new
    @employee_role = EmployeeRole.new
  end

  # GET /employee_roles/1/edit
  def edit
  end

  # POST /employee_roles or /employee_roles.json
  def create
    @employee_role = EmployeeRole.new(employee_role_params)

    respond_to do |format|
      if @employee_role.save
        format.html { redirect_to employee_role_url(@employee_role), notice: "Employee role was successfully created." }
        format.json { render :show, status: :created, location: @employee_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_roles/1 or /employee_roles/1.json
  def update
    respond_to do |format|
      if @employee_role.update(employee_role_params)
        format.html { redirect_to employee_role_url(@employee_role), notice: "Employee role was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_roles/1 or /employee_roles/1.json
  def destroy
    @employee_role.destroy

    respond_to do |format|
      format.html { redirect_to employee_roles_url, notice: "Employee role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_role
      @employee_role = EmployeeRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_role_params
      params.require(:employee_role).permit(:employee_id, :role_id)
    end
end
