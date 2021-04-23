class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :descripion
      t.float :price
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :order_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
