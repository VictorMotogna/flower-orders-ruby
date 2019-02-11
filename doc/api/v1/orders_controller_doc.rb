module Api::V1::OrdersControllerDoc
  extend Apipie::DSL::Concern

  def_param_group :order do
    param :person, String, "Person name"
    param :date, Date, "Delivery date"
  end

  def_param_group :id do
    param 'id', Integer, required: true
  end

  api :GET, '/orders', 'Get all orders'
  def index
  end

  api :GET, '/orders/:id', 'Get certain order'
  param_group :id
  def show
  end

  api :POST, '/orders', 'Create new order'
  param_group :order
  def create
  end

  api :DELETE, '/orders/:id', 'Delete certain order'
  param_group :id
  def destroy
  end

  api :PATCH, '/orders/:id', 'Update certain order'
  param_group :id
  def update
  end
end