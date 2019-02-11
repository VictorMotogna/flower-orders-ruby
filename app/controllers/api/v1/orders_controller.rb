class Api::V1::OrdersController < ApplicationController

  before_action :find_order, only: [:show, :update, :destroy]
  

  def index
    @orders = Order.order(date: :asc)
    render json: @orders, each_serializer: OrdersSerializer, root: false
  end

  def show
    render json: @order, serializer: OrdersSerializer
  end

  def update
    if @order.update!(order_params)
        render json: @order, serializer: OrdersSerializer
    else
        render json: true, status: :bad_request
    end
  end

  def destroy
    if @order.destroy!
      render json: { message: "Deleted successfuly!" }
    else
      render nothing: true, status: :bad_request
    end
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, serializer: OrdersSerializer
    else
      render nothing: true, status: :bad_request
    end
  end

  private
    def find_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:date, :person)
    end
end