class Product < ApplicationRecord
 
  has_many :product_orders
  has_many :orders, through: :product_order
  
  has_many :user_products
  has_many :users, through: :user_product
end
