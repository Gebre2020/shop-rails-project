class User < ApplicationRecord
  has_secure_password  #authenticate, validate password &/or password confirmation
  has_many :products  # array
  has_many :product_orders, through: :products
  
  # where does validates come from? activerecord
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  validates :password, length: { in: 6..10 }

  # custom method
  # Validate :is_a_valid_email?

  # def is_a_valid_email?
  #   if !email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  #     errors.add(:email, "Give me a real email")
  #   end
  # end

  # validator going to check that theres 2 words when full_name submitted

end
