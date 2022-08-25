class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[edit update]

  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: "Profile was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:username, :firstname, :lastname, :website, :bio, :account_id)
  end
end
