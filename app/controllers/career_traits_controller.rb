class CareerTraitsController < ApplicationController
  before_action :set_career_trait, only: %i[show edit update destroy]

  # GET /career_traits or /career_traits.json
  def index
    @career_traits = CareerTrait.all
  end

  # GET /career_traits/1 or /career_traits/1.json
  def show; end

  # GET /career_traits/new
  def new
    @career_trait = CareerTrait.new
  end

  # GET /career_traits/1/edit
  def edit; end

  # POST /career_traits or /career_traits.json
  def create
    @career_trait = CareerTrait.new(career_trait_params)

    respond_to do |format|
      if @career_trait.save
        format.html { redirect_to career_trait_url(@career_trait), notice: 'Career trait was successfully created.' }
        format.json { render :show, status: :created, location: @career_trait }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @career_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /career_traits/1 or /career_traits/1.json
  def update
    respond_to do |format|
      if @career_trait.update(career_trait_params)
        format.html { redirect_to career_trait_url(@career_trait), notice: 'Career trait was successfully updated.' }
        format.json { render :show, status: :ok, location: @career_trait }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @career_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /career_traits/1 or /career_traits/1.json
  def destroy
    @career_trait.destroy

    respond_to do |format|
      format.html { redirect_to career_traits_url, notice: 'Career trait was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_career_trait
    @career_trait = CareerTrait.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def career_trait_params
    params.require(:career_trait).permit(:career_id, :personality_trait_id)
  end
end
