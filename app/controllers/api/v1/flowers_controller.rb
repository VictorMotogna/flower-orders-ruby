class Api::V1::FlowersController < ApplicationController

  def add_to_order
    flower = Flower.new(flower_params)
    if flower.save!
      order = Order.find(flower.order_id)
      render json: { order: order, flowers: order.flowers }
    else 
      render nothing: true, status: :bad_request
    end
  end

  private
    def flower_params
      params.require(:flower).permit(:name, :color, :number, :order_id)
    end

    def find_flower
      @flower = Flower.find(params[:id])
    end
end