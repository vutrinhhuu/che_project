class StaticPagesController < ApplicationController
  def home
    @slide_chairs = Chair.limit(3).order(id: :desc)
    @list_chair = Chair.limit(8).order(id: :desc)
  end
end
