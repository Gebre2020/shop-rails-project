class User < ApplicationRecord
  has_secure_password
  has_many :products
  has_many :order_items, through: :products

  validates :username, :email, uniqueness: true, presence: true
end
