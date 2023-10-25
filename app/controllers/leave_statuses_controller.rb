class LeaveStatusesController < ApplicationController
  before_action :set_leave_status, only: %i[ show edit update destroy ]

  # GET /leave_statuses or /leave_statuses.json
  def index
    @leave_statuses = LeaveStatus.all
  end

  # GET /leave_statuses/1 or /leave_statuses/1.json
  def show
  end

  # GET /leave_statuses/new
  def new
    @leave_status = LeaveStatus.new
  end

  # GET /leave_statuses/1/edit
  def edit
  end

  # POST /leave_statuses or /leave_statuses.json
  def create
    @leave_status = LeaveStatus.new(leave_status_params)

    respond_to do |format|
      if @leave_status.save
        format.html { redirect_to leave_status_url(@leave_status), notice: "Leave status was successfully created." }
        format.json { render :show, status: :created, location: @leave_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_statuses/1 or /leave_statuses/1.json
  def update
    respond_to do |format|
      if @leave_status.update(leave_status_params)
        format.html { redirect_to leave_status_url(@leave_status), notice: "Leave status was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_statuses/1 or /leave_statuses/1.json
  def destroy
    @leave_status.destroy

    respond_to do |format|
      format.html { redirect_to leave_statuses_url, notice: "Leave status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_status
      @leave_status = LeaveStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_status_params
      params.require(:leave_status).permit(:description)
    end
end
