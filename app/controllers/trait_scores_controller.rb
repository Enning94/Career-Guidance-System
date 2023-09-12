class TraitScoresController < ApplicationController
  before_action :set_trait_score, only: %i[ show edit update destroy ]

  # GET /trait_scores or /trait_scores.json
  def index
    @trait_scores = TraitScore.all
  end

  # GET /trait_scores/1 or /trait_scores/1.json
  def show
  end

  # GET /trait_scores/new
  def new
    @trait_score = TraitScore.new
  end

  # GET /trait_scores/1/edit
  def edit
  end

  # POST /trait_scores or /trait_scores.json
  def create
    @trait_score = TraitScore.new(trait_score_params)

    respond_to do |format|
      if @trait_score.save
        format.html { redirect_to trait_score_url(@trait_score), notice: "Trait score was successfully created." }
        format.json { render :show, status: :created, location: @trait_score }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trait_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trait_scores/1 or /trait_scores/1.json
  def update
    respond_to do |format|
      if @trait_score.update(trait_score_params)
        format.html { redirect_to trait_score_url(@trait_score), notice: "Trait score was successfully updated." }
        format.json { render :show, status: :ok, location: @trait_score }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trait_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trait_scores/1 or /trait_scores/1.json
  def destroy
    @trait_score.destroy

    respond_to do |format|
      format.html { redirect_to trait_scores_url, notice: "Trait score was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trait_score
      @trait_score = TraitScore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trait_score_params
      params.require(:trait_score).permit(:score, :user_id, :personality_trait_id)
    end
end
