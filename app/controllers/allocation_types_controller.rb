class AllocationTypesController < ApplicationController
  before_action :set_allocation_type, only: %i[ show edit update destroy ]

  # GET /allocation_types or /allocation_types.json
  def index
    @allocation_types = AllocationType.all
  end

  # GET /allocation_types/1 or /allocation_types/1.json
  def show
  end

  # GET /allocation_types/new
  def new
    @allocation_type = AllocationType.new
  end

  # GET /allocation_types/1/edit
  def edit
  end

  # POST /allocation_types or /allocation_types.json
  def create
    @allocation_type = AllocationType.new(allocation_type_params)

    respond_to do |format|
      if @allocation_type.save
        format.html { redirect_to allocation_type_url(@allocation_type), notice: "Allocation type was successfully created." }
        format.json { render :show, status: :created, location: @allocation_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @allocation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocation_types/1 or /allocation_types/1.json
  def update
    respond_to do |format|
      if @allocation_type.update(allocation_type_params)
        format.html { redirect_to allocation_type_url(@allocation_type), notice: "Allocation type was successfully updated." }
        format.json { render :show, status: :ok, location: @allocation_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @allocation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocation_types/1 or /allocation_types/1.json
  def destroy
    @allocation_type.destroy

    respond_to do |format|
      format.html { redirect_to allocation_types_url, notice: "Allocation type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation_type
      @allocation_type = AllocationType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def allocation_type_params
      params.require(:allocation_type).permit(:description)
    end
end
