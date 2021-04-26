class User < ApplicationRecord
  has_secure_password
  validates :username, :email, uniqueness: true, presence: true

  has_many :orders
  has_many :user_product
  has_many :products, through: :user_product

end
