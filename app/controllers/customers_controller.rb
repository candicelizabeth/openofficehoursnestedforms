class CustomersController < ApplicationController
    def index 

    end

    def show
        @customer = Customer.find_by_id(params[:id])
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
