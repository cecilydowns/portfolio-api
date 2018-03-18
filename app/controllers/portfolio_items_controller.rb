class PortfolioItemsController < ApplicationController
    def index
        items = PortfolioItem.all
        render json: items
    end
end