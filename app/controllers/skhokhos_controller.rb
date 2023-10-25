class SkhokhosController < ApplicationController
  before_action :set_skhokho, only: %i[ show edit update destroy ]

  # GET /skhokhos or /skhokhos.json
  def index
    @skhokhos = Skhokho.all
  end

  # GET /skhokhos/1 or /skhokhos/1.json
  def show
  end

  # GET /skhokhos/new
  def new
    @skhokho = Skhokho.new
  end

  # GET /skhokhos/1/edit
  def edit
  end

  # POST /skhokhos or /skhokhos.json
  def create
    @skhokho = Skhokho.new(skhokho_params)

    respond_to do |format|
      if @skhokho.save
        format.html { redirect_to skhokho_url(@skhokho), notice: "Skhokho was successfully created." }
        format.json { render :show, status: :created, location: @skhokho }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @skhokho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skhokhos/1 or /skhokhos/1.json
  def update
    respond_to do |format|
      if @skhokho.update(skhokho_params)
        format.html { redirect_to skhokho_url(@skhokho), notice: "Skhokho was successfully updated." }
        format.json { render :show, status: :ok, location: @skhokho }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skhokho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skhokhos/1 or /skhokhos/1.json
  def destroy
    @skhokho.destroy

    respond_to do |format|
      format.html { redirect_to skhokhos_url, notice: "Skhokho was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skhokho
      @skhokho = Skhokho.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skhokho_params
      params.require(:skhokho).permit(:cardDate, :skhokhoCreator, :employee_id, :comment, :processed, :voucher_id)
    end
end
