class LeaveAccrualsController < ApplicationController
  before_action :set_leave_accrual, only: %i[ show edit update destroy ]

  # GET /leave_accruals or /leave_accruals.json
  def index
    @leave_accruals = LeaveAccrual.all
  end

  # GET /leave_accruals/1 or /leave_accruals/1.json
  def show
  end

  # GET /leave_accruals/new
  def new
    @leave_accrual = LeaveAccrual.new
  end

  # GET /leave_accruals/1/edit
  def edit
  end

  # POST /leave_accruals or /leave_accruals.json
  def create
    @leave_accrual = LeaveAccrual.new(leave_accrual_params)

    respond_to do |format|
      if @leave_accrual.save
        format.html { redirect_to leave_accrual_url(@leave_accrual), notice: "Leave accrual was successfully created." }
        format.json { render :show, status: :created, location: @leave_accrual }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_accrual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_accruals/1 or /leave_accruals/1.json
  def update
    respond_to do |format|
      if @leave_accrual.update(leave_accrual_params)
        format.html { redirect_to leave_accrual_url(@leave_accrual), notice: "Leave accrual was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_accrual }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_accrual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_accruals/1 or /leave_accruals/1.json
  def destroy
    @leave_accrual.destroy

    respond_to do |format|
      format.html { redirect_to leave_accruals_url, notice: "Leave accrual was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_accrual
      @leave_accrual = LeaveAccrual.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_accrual_params
      params.require(:leave_accrual).permit(:days_allocated, :employee_id, :period_type_id, :leave_type_id)
    end
end
