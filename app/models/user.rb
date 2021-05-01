class User < ApplicationRecord
  has_secure_password  #authenticate, validate password &/or password confirmation
  has_many :products  # array
  has_many :product_orders, through: :products
  
  validates :username, :email, uniqueness: true, presence: true
  validates :password, presence: true
  validates :password, length: { in: 6..10 }

end
