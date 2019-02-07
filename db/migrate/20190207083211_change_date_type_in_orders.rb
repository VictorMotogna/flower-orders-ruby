class ChangeDateTypeInOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :date, :date
  end
end
