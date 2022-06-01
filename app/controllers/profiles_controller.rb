class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      #flash[:success] = "Profile saved"
      redirect_to root_path
    else
      #flash[:error] = "Error"
      render :new
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def my_profile
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      flash[:notice] = "Profile successfully changed"
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def find_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :phone, :age, :address, :bio, :sports, :user_type)
  end
end
