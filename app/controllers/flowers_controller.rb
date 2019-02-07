class FlowersController < ApplicationController

  def create
    @order = Order.find(params[:order_id])
    @flower = @order.flowers.create(params[:flower].permit(:name, :color, :number))
    redirect_to order_path(@order)
  end

  def destroy
    @order = Order.find(params[:order_id])
    @flower = @order.flowers.find(params[:id])
    @flower.destroy
    redirect_to order_path(@order)
  end
end
