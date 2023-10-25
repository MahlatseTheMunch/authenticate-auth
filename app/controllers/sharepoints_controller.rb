class SharepointsController < ApplicationController
  before_action :set_sharepoint, only: %i[ show edit update destroy ]

  # GET /sharepoints or /sharepoints.json
  def index
    @sharepoints = Sharepoint.all
  end

  # GET /sharepoints/1 or /sharepoints/1.json
  def show
  end

  # GET /sharepoints/new
  def new
    @sharepoint = Sharepoint.new
  end

  # GET /sharepoints/1/edit
  def edit
  end

  # POST /sharepoints or /sharepoints.json
  def create
    @sharepoint = Sharepoint.new(sharepoint_params)

    respond_to do |format|
      if @sharepoint.save
        format.html { redirect_to sharepoint_url(@sharepoint), notice: "Sharepoint was successfully created." }
        format.json { render :show, status: :created, location: @sharepoint }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sharepoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sharepoints/1 or /sharepoints/1.json
  def update
    respond_to do |format|
      if @sharepoint.update(sharepoint_params)
        format.html { redirect_to sharepoint_url(@sharepoint), notice: "Sharepoint was successfully updated." }
        format.json { render :show, status: :ok, location: @sharepoint }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sharepoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sharepoints/1 or /sharepoints/1.json
  def destroy
    @sharepoint.destroy

    respond_to do |format|
      format.html { redirect_to sharepoints_url, notice: "Sharepoint was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sharepoint
      @sharepoint = Sharepoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sharepoint_params
      params.fetch(:sharepoint, {})
    end
end
