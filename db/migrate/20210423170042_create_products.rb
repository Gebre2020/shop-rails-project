class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.float :unit_price
      t.integer :user_id

      t.timestamps
    end
  end
end
