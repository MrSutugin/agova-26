class AreasController < ApplicationController
  before_action :authenticate, only: %i[new edit update destroy]
  before_action :set_area, only: %i[show edit update destroy]
  before_action :append_regions, only: %i[index new edit]
  before_action :append_categories, only: %i[index new edit]
  before_action :append_brands, only: %i[index new edit]

  def index
    @areas = Area.all
  end

  def show
  end

  def new
    @area = current_account.areas.new
  end

  def edit
  end

  def create
    @area = current_account.areas.new(area_params)

    if @area.save
      redirect_to dashboard_brand_path
      flash[:notice] = "Участок успешно создан"
    else
      flash.now[:alert] = "Не удалось создать участок"
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @area.update(area_params)
      redirect_to @area, notice: "Area was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @area.destroy
    redirect_to areas_url, notice: "Area was successfully destroyed."
  end

  private

  def set_area
    @area = Area.find(params[:id])
  end

  def append_regions
    @regions = Region.all
  end

  def append_categories
    @categories = Category.all
  end

  def append_brands
    @brands = Brand.all
  end

  def area_params
    params.require(:area).permit(:name, :description, :square, :number, :brand_id, :account_id)
  end
end
