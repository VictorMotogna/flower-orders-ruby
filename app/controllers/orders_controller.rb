class OrdersController < ApplicationController

  before_action :find_order, only: [:show, :update, :edit, :destroy]

  def index
    @orders = Order.all.order(date: :desc)
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_path
  end

  private
    def order_params
      params.require(:order).permit(:date, :person)
    end

    def find_order
      @order = Order.find(params[:id])
    end
end
