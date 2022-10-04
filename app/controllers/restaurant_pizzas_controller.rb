class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_response

    def index
        restaurant_pizza = RestaurantPizza.all
        render json: restaurant_pizza, status: :ok
    end

    def create
        # byebug
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        pizza = Pizza.find(restaurant_pizza.pizza_id)
        render json: pizza, status: :created 
    end

    def restaurant_pizza_params
        params.permit(:restaurant_id, :pizza_id, :price)
    end

    private 
    
    def invalid_response
        render json: {error: "validation error"}, status: :not_found
    end 

end