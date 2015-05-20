class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  #after_save :do_go_home

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @program = Program.all
    @my_exercises = current_user.exercises.all
    @my_profile = current_user.profile
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end


  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    @profile.user_id = current_user.id
    if params[:gender_male] == "on"
      @profile.gender = "مرد"
    elsif params[:gender_female] == "on"
      @profile.gender = "زن"
    end

    # byebug

    respond_to do |format|
      if @profile.save
        format.html { redirect_to :controller => 'workouts' , :action => 'homepage' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  #hooman/jadval miani
  def select_program
    @exercise = Exercise.new
    @exercise.program_id = params[:program_id]
    @exercise.user_id = current_user.id
    @exercise.save

    redirect_to profile_path(current_user.profile.id)

  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def perWeek
  end
  def pishraft
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:firstname, :lastname, :email, :age, :gender, :height, :weight, :user_id)
    end

    def do_go_homed
          redirect_to :controller => 'workouts' , :action => 'show' , :id => current_user.id
    end
end
