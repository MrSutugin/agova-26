class GigsController < ApplicationController
  before_action :authenticate, only: %i[new edit update destroy]
  before_action :set_gig, only: %i[show edit update destroy]
  before_action :append_regions, only: %i[index new edit]
  before_action :append_categories, only: %i[index new edit]

  def index
    @q = Gig.ransack(params[:q])
    @gigs = @q.result(distinct: true)
  end

  def show
  end

  def new
    @gig = current_account.gigs.new
  end

  def edit
  end

  def create
    @gig = current_account.gigs.new(gig_params)

    if @gig.save
      redirect_to dashboard_path
      flash[:notice] = "Публикация успешно создана"
    else
      flash.now[:alert] = "Не удалось создать публикацию"
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @gig.update(gig_params)
      redirect_to @gig, notice: "Gig was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gig.destroy
    flash[:alert] = "Публикация успешно удалена"
    redirect_to dashboard_path
  end

  private

  def set_gig
    @gig = Gig.find(params[:id])
  end

  def append_regions
    @regions = Region.all
  end

  def append_categories
    @categories = Category.all
  end

  def gig_params
    params.require(:gig).permit(:name, :description, :price, :category_id, :region_id, :account_id)
  end
end
