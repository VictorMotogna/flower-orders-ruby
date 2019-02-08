class Api::V1::OrdersController < ApplicationController

  before_action :find_order, only: [:show, :update, :destroy]

  def index
    @orders = Order.order(date: :asc)
    render json: @orders, status: :ok
  end

  def show
    render json: @order, status: :ok
  end

  def update
    if @order.update!(order_params)
        render json: @order
    else
        render json: true, status: :bad_request
    end
  end

  def destroy
    if @order.destroy!
      render json: { message: "Deleted successfuly!" }, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :ok
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