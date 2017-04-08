class ItemsController < ApplicationController
    def index
        @items = Item.all
    end
    
    def new
    end
    
    def create
        # render plain: params[:item].inspect
        @item = Item.new(item_params)
        @item.save
        
        redirect_to @item
    end
    
    def show
        @item = Item.find(params[:id])
    end
    
    private
    def item_params
        params.require(:item).permit(:title, :notes)
    end
end
