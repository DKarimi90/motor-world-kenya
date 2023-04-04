class CarsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # before_action :current_user
    # before_action :require_admin, only: [:create, :update, :destroy]
    # before_action :authorize
    # skip_before_action :authorize, only: [:index]

    #GET/cars 
    def index
        render json: Car.all 
    end

    #GET/cars/:id
    def show 
        car = Car.find(params[:id])
        render json: car
    end
    

    # #PUT/cars/:id updating car
    def update
        car = Car.find(params[:id])
        car.update!(car_params)
        render json: car

    
    end

   # Create a new car

    def create
        car = Car.create(car_params)
         if car.valid?
            render json: car, status: :created
        else 
            render json: { errors: car.errors.full_messages }, status: :unprocessable_entity
        end
    end

    #DELETE/cars 
    def destroy 
        car = Car.find(params[:id])
        car.delete 
        head :no_content
    end


    private 
    def car_params
        params.permit(:id, :image_url, :name, :model, :mileage, :price, :transmission, :show_room_id)
    end

    def render_not_found_response
        render json: { error: "Car not found" }, status: :not_found
    end
      
end






