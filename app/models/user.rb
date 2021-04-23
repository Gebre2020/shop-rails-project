class User < ApplicationRecord
  has_secure_password
  has_many :products
  has_many :order_items, through: :products
end
