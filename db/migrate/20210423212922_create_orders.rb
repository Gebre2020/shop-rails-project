class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :sub_total
      t.float :tax
      t.float :total
      t.float :check_out_cost

      t.timestamps
    end
  end
end
