class ChairsController < ApplicationController
    def index
        @list_chair =  Chair.all.page params[:page]
    end
    
    def show
        @chair =  Chair.find params[:id]
        @list_other_chair = Chair.where("id!=?",params[:id]).limit(4).order(id: :desc)
        @url_current = request.original_url
    end
end