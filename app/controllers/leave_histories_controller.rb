class LeaveHistoriesController < ApplicationController
  before_action :set_leave_history, only: %i[ show edit update destroy ]

  # GET /leave_histories or /leave_histories.json
  def index
    @leave_histories = LeaveHistory.all
  end

  # GET /leave_histories/1 or /leave_histories/1.json
  def show
  end

  # GET /leave_histories/new
  def new
    @leave_history = LeaveHistory.new
  end

  # GET /leave_histories/1/edit
  def edit
  end

  # POST /leave_histories or /leave_histories.json
  def create
    @leave_history = LeaveHistory.new(leave_history_params)

    respond_to do |format|
      if @leave_history.save
        format.html { redirect_to leave_history_url(@leave_history), notice: "Leave history was successfully created." }
        format.json { render :show, status: :created, location: @leave_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_histories/1 or /leave_histories/1.json
  def update
    respond_to do |format|
      if @leave_history.update(leave_history_params)
        format.html { redirect_to leave_history_url(@leave_history), notice: "Leave history was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_histories/1 or /leave_histories/1.json
  def destroy
    @leave_history.destroy

    respond_to do |format|
      format.html { redirect_to leave_histories_url, notice: "Leave history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_history
      @leave_history = LeaveHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_history_params
      params.require(:leave_history).permit(:description, :comment, :leave_id, :leave_status_id)
    end
end
