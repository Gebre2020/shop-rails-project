class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  has_many :products
  has_many :users, through: :products
end
