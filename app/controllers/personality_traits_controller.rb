class PersonalityTraitsController < ApplicationController
  before_action :set_personality_trait, only: %i[show edit update destroy]

  # GET /personality_traits or /personality_traits.json
  def index
    @personality_traits = PersonalityTrait.all
  end

  # GET /personality_traits/1 or /personality_traits/1.json
  def show; end

  # GET /personality_traits/new
  def new
    @personality_trait = PersonalityTrait.new
  end

  # GET /personality_traits/1/edit
  def edit; end

  # POST /personality_traits or /personality_traits.json
  def create
    @personality_trait = PersonalityTrait.new(personality_trait_params)

    respond_to do |format|
      if @personality_trait.save
        format.html do
          redirect_to personality_trait_url(@personality_trait), notice: 'Personality trait was successfully created.'
        end
        format.json { render :show, status: :created, location: @personality_trait }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personality_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personality_traits/1 or /personality_traits/1.json
  def update
    respond_to do |format|
      if @personality_trait.update(personality_trait_params)
        format.html do
          redirect_to personality_trait_url(@personality_trait), notice: 'Personality trait was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @personality_trait }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personality_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personality_traits/1 or /personality_traits/1.json
  def destroy
    @personality_trait.destroy

    respond_to do |format|
      format.html { redirect_to personality_traits_url, notice: 'Personality trait was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_personality_trait
    @personality_trait = PersonalityTrait.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def personality_trait_params
    params.require(:personality_trait).permit(:name)
  end
end
