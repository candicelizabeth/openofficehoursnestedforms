class ChefsController < ApplicationController
    def index 
        @chefs = Chef.all
    end

    def show
        @chef = Chef.find_by_id(params[:id])
    end

    def new
        @chef = Chef.new
        3.times do 
            c = @chef.sushis.build 
            c.build_customer
        end
    end

    def create
        @chef = Chef.new(chef_params)
        if @chef.save 
            redirect_to chef_path(@chef)
        else
            render :new 
        end
    end

    def edit 

    end

    def update

    end

    def destroy

    end

    private 

    def chef_params 
        params.require(:chef).permit(:name, sushis_attributes: [:name, :customer_id, customer_attributes:[:name]])
    end
end
