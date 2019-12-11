class StaticPagesController < ApplicationController
  def home
    @slide_chairs = Chair.limit(3).where("quantity > 0").order(id: :desc)
    @list_chair = Chair.limit(8).order(id: :desc)
    @categories = Category.all
    @brands = Brand.all
  end
end
