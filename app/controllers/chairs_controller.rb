class ChairsController < ApplicationController
    def index
        sort_by =params[:sort_by]
        case sort_by
        when "price_asc"
            @search = Chair.all.order(price: :asc).ransack params[:q]
        when "price_desc"
            @search = Chair.all.order(price: :desc).ransack params[:q]
        else
            @search = Chair.all.order(id: :desc).ransack params[:q]
        end
        if !params[:limit]
            @chairs = @search.result.page(params[:page]).per 10
        else
            @chairs = @search.result.page(params[:page]).per params[:limit]
        end
        @quantity_chair = @search.result.count
    end
    
    def show
        @chair =  Chair.find params[:id]
        @list_other_chair = Chair.where("id!=?",params[:id]).limit(4).order(id: :desc)
        @url_current = request.original_url
    end
end