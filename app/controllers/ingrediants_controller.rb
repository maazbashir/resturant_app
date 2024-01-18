class IngrediantsController < ApplicationController
  before_action :set_ingrediant, only: %i[ show edit update destroy ]

  # GET /ingrediants or /ingrediants.json
  def index
    @ingrediants = Ingrediant.all
  end

  # GET /ingrediants/1 or /ingrediants/1.json
  def show
  end

  # GET /ingrediants/new
  def new
    @ingrediant = Ingrediant.new
  end

  # GET /ingrediants/1/edit
  def edit
  end

  # POST /ingrediants or /ingrediants.json
  def create
    @ingrediant = Ingrediant.new(ingrediant_params)

    respond_to do |format|
      if @ingrediant.save
        format.html { redirect_to ingrediant_url(@ingrediant), notice: "Ingrediant was successfully created." }
        format.json { render :show, status: :created, location: @ingrediant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingrediant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingrediants/1 or /ingrediants/1.json
  def update
    respond_to do |format|
      if @ingrediant.update(ingrediant_params)
        format.html { redirect_to ingrediant_url(@ingrediant), notice: "Ingrediant was successfully updated." }
        format.json { render :show, status: :ok, location: @ingrediant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingrediant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingrediants/1 or /ingrediants/1.json
  def destroy
    @ingrediant.destroy!

    respond_to do |format|
      format.html { redirect_to ingrediants_url, notice: "Ingrediant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingrediant
      @ingrediant = Ingrediant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingrediant_params
      params.require(:ingrediant).permit(:name, :price)
    end
end
