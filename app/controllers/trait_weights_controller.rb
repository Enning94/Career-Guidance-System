class TraitWeightsController < ApplicationController
  before_action :set_trait_weight, only: %i[show edit update destroy]

  # GET /trait_weights or /trait_weights.json
  def index
    @trait_weights = TraitWeight.all
  end

  # GET /trait_weights/1 or /trait_weights/1.json
  def show; end

  # GET /trait_weights/new
  def new
    @trait_weight = TraitWeight.new
  end

  # GET /trait_weights/1/edit
  def edit; end

  # POST /trait_weights or /trait_weights.json
  def create
    @trait_weight = TraitWeight.new(trait_weight_params)

    respond_to do |format|
      if @trait_weight.save
        format.html { redirect_to trait_weight_url(@trait_weight), notice: 'Trait weight was successfully created.' }
        format.json { render :show, status: :created, location: @trait_weight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trait_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trait_weights/1 or /trait_weights/1.json
  def update
    respond_to do |format|
      if @trait_weight.update(trait_weight_params)
        format.html { redirect_to trait_weight_url(@trait_weight), notice: 'Trait weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @trait_weight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trait_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trait_weights/1 or /trait_weights/1.json
  def destroy
    @trait_weight.destroy

    respond_to do |format|
      format.html { redirect_to trait_weights_url, notice: 'Trait weight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_trait_weight
    @trait_weight = TraitWeight.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def trait_weight_params
    params.require(:trait_weight).permit(:career_id, :Trait1_weight, :Trait2_weight, :Trait3_weight, :Trait4_weight,
                                         :Trait5_weight, :Trait6_weight)
  end
end
