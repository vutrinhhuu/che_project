class ChairsController < ApplicationController
    def index
        @categories = Category.all
        if params[:category]
            @category = @categories.find(params[:category])
            @chairs = @category.chairs
        else
            @chairs = Chair.all
        end
        sort_by = params[:sort_by]
        case sort_by
        when "price_asc"
            @search = @chairs.order(price: :asc).ransack params[:q]
            @price_asc = true
        when "price_desc"
            @search = @chairs.order(price: :desc).ransack params[:q]
            @price_desc = true
        else
            @search = @chairs.order(id: :desc).ransack params[:q]
        end
        if !params[:limit]
            @chairs = @search.result.page(params[:page]).per 9
        else
            @chairs = @search.result.page(params[:page]).per params[:limit]
        end
        @quantity_chair = @search.result.count
        @order_item = current_order.order_items.new
    end

    def show
        @chair =  Chair.find params[:id]
        @list_other_chair = Chair.where("id!=?",params[:id]).limit(4).order(id: :desc)
        @url_current = request.original_url
        @order_item = current_order.order_items.new
    end
end
