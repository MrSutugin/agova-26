class BrandsController < ApplicationController
  before_action :authenticate, only: %i[new edit update destroy]
  before_action :set_brand, only: %i[show edit update destroy]
  before_action :append_regions, only: %i[index new edit]
  before_action :append_categories, only: %i[index new edit]

  def index
    @q = Brand.ransack(params[:q])
    @brands = @q.result(distinct: true)
  end

  def show
  end

  def new
    @brand = current_account.brands.new
  end

  def edit
  end

  def create
    @brand = current_account.brands.new(brand_params)

    if @brand.save
      redirect_to dashboard_brand_path
      flash[:notice] = "Товарищество успешно создано"
    else
      flash.now[:alert] = "Не удалось создать товарищество"
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @brand.update(brand_params)
      redirect_to @brand, notice: "Brand was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_url, notice: "Brand was successfully destroyed."
  end

  private

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def append_regions
    @regions = Region.all
  end

  def append_categories
    @categories = Category.all
  end

  def brand_params
    params.require(:brand).permit(
      :name,
      :description,
      :phone,
      :email,
      :inn,
      :ogrn,
      :region_id,
      :address,
      :geo_lat,
      :geo_lon,
      :account_id
    )
  end
end
