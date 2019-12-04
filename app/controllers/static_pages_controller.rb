class StaticPagesController < ApplicationController
  def home
    @slide_chairs_office = Chair.limit(3).where("quantity > 0").where("category_id = 1").order(id: :desc)
    @slide_chairs_wheel = Chair.limit(3).where("quantity > 0").where("category_id = 2").order(id: :desc)
    @list_chair = Chair.limit(8).order(id: :desc)
  end
end
