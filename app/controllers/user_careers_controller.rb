class UserCareersController < ApplicationController
  before_action :set_user_career, only: %i[ show edit update destroy ]

  # GET /user_careers or /user_careers.json
  def index
    @user_careers = UserCareer.all
  end

  # GET /user_careers/1 or /user_careers/1.json
  def show
  end

  # GET /user_careers/new
  def new
    @user_career = UserCareer.new
  end

  # GET /user_careers/1/edit
  def edit
  end

  # POST /user_careers or /user_careers.json
  def create
    @user_career = UserCareer.new(user_career_params)

    respond_to do |format|
      if @user_career.save
        format.html { redirect_to user_career_url(@user_career), notice: "User career was successfully created." }
        format.json { render :show, status: :created, location: @user_career }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_careers/1 or /user_careers/1.json
  def update
    respond_to do |format|
      if @user_career.update(user_career_params)
        format.html { redirect_to user_career_url(@user_career), notice: "User career was successfully updated." }
        format.json { render :show, status: :ok, location: @user_career }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_careers/1 or /user_careers/1.json
  def destroy
    @user_career.destroy

    respond_to do |format|
      format.html { redirect_to user_careers_url, notice: "User career was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_career
      @user_career = UserCareer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_career_params
      params.require(:user_career).permit(:score, :career_id, :user_id)
    end
end
