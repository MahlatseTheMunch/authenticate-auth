class CategoryValuesController < ApplicationController
  before_action :set_category_value, only: %i[ show edit update destroy ]

  # GET /category_values or /category_values.json
  def index
    @category_values = CategoryValue.all
  end

  # GET /category_values/1 or /category_values/1.json
  def show
  end

  # GET /category_values/new
  def new
    @category_value = CategoryValue.new
  end

  # GET /category_values/1/edit
  def edit
  end

  # POST /category_values or /category_values.json
  def create
    @category_value = CategoryValue.new(category_value_params)

    respond_to do |format|
      if @category_value.save
        format.html { redirect_to category_value_url(@category_value), notice: "Category value was successfully created." }
        format.json { render :show, status: :created, location: @category_value }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_values/1 or /category_values/1.json
  def update
    respond_to do |format|
      if @category_value.update(category_value_params)
        format.html { redirect_to category_value_url(@category_value), notice: "Category value was successfully updated." }
        format.json { render :show, status: :ok, location: @category_value }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_values/1 or /category_values/1.json
  def destroy
    @category_value.destroy

    respond_to do |format|
      format.html { redirect_to category_values_url, notice: "Category value was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_value
      @category_value = CategoryValue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_value_params
      params.require(:category_value).permit(:category_id, :value_id, :skhokho_id)
    end
end
