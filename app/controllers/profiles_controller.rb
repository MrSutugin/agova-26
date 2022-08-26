class ProfilesController < ApplicationController
  before_action :authenticate
  before_action :set_profile, only: %i[dashboard update]

  def dashboard
    @gigs = current_account.gigs.order("id DESC").all
  end

  def brand
    @brands = current_account.brands.order("id DESC").all
  end

  def area
    @areas = current_account.areas.order("id DESC").all
  end

  def update
    if @profile.update(profile_params)
      flash.now[:notice] = "Профиль успешно обновлен"
    else
      flash.now[:alert] = "Не удалось обновить профиль"
    end
    redirect_to dashboard_path
  end

  private

  def set_profile
    @profile = current_profile
  end

  def profile_params
    params.require(:profile).permit(:username, :firstname, :lastname, :website, :bio, :account_id)
  end
end
