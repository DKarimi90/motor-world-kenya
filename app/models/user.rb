class User < ApplicationRecord
      # Relationship
      has_secure_password
      has_many :cars
      has_many :reviews
  
  # # Validations
  
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  
  validates :password, length: {minimum: 6}
  
end
