class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :total
      t.float :tax
      t.float :check_out

      t.timestamps
    end
  end
end
