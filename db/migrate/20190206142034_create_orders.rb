class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :date
      t.string :person

      t.timestamps
    end
  end
end
