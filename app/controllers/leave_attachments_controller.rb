class LeaveAttachmentsController < ApplicationController
  before_action :set_leave_attachment, only: %i[ show edit update destroy ]

  # GET /leave_attachments or /leave_attachments.json
  def index
    @leave_attachments = LeaveAttachment.all
  end

  # GET /leave_attachments/1 or /leave_attachments/1.json
  def show
  end

  # GET /leave_attachments/new
  def new
    @leave_attachment = LeaveAttachment.new
  end

  # GET /leave_attachments/1/edit
  def edit
  end

  # POST /leave_attachments or /leave_attachments.json
  def create
    @leave_attachment = LeaveAttachment.new(leave_attachment_params)

    respond_to do |format|
      if @leave_attachment.save
        format.html { redirect_to leave_attachment_url(@leave_attachment), notice: "Leave attachment was successfully created." }
        format.json { render :show, status: :created, location: @leave_attachment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_attachments/1 or /leave_attachments/1.json
  def update
    respond_to do |format|
      if @leave_attachment.update(leave_attachment_params)
        format.html { redirect_to leave_attachment_url(@leave_attachment), notice: "Leave attachment was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_attachment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_attachments/1 or /leave_attachments/1.json
  def destroy
    @leave_attachment.destroy

    respond_to do |format|
      format.html { redirect_to leave_attachments_url, notice: "Leave attachment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_attachment
      @leave_attachment = LeaveAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_attachment_params
      params.require(:leave_attachment).permit(:leave_id, :filename, :attachment_link)
    end
end
