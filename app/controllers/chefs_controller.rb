class ChefsController < ApplicationController
    def index 
        @chefs = Chef.all
    end

    def show
        @chef = Chef.find_by_id(params[:id])
    end

    def new

    end

    def create

    end

    def edit 

    end

    def update

    end

    def destroy

    end
end
