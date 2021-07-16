class SushisController < ApplicationController
    before_action :find_my_sushi, only: [:show, :edit, :update, :destroy]
    
    def index 
        @sushis = Sushi.all
    end

    def show
    end

    def new
        @sushi = Sushi.new
        @sushi.build_chef 
        @sushi.build_customer
    end

    def create
        @sushi = Sushi.new(sushi_params)
        # byebug
        if @sushi.save 
            redirect_to sushi_path(@sushi)
        else
            render :new
        end
        # byebug
    end

    def edit 

    end

    def update

    end

    def destroy  
    end

    private 

    def find_my_sushi 
        @sushi = Sushi.find_by_id(params[:id])
    end

    def sushi_params 
        params.require(:sushi).permit(:name, :chef_id, :customer_id, chef_attributes: [:name], customer_attributes: [:name])
    end
end
