# Renders the home page.
class HomeController < ApplicationController
  before_action :append_regions, only: %i[index]
  before_action :append_categories, only: %i[index]
  def index
    @q = Gig.ransack(params[:q])
    @gigs = @q.result(distinct: true)
    @brands = Brand.order("id DESC").all
  end
  
  private

  def append_regions
    @regions = Region.all
  end

  def append_categories
    @categories = Category.all
  end
end
