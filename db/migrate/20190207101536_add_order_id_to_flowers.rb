class AddOrderIdToFlowers < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :order_id, :integer
  end
end