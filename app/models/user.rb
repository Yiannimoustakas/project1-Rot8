class User < ApplicationRecord
  has_secure_password # makes password field mandatory
  has_many :rotates
  validates :email, presence: true, uniqueness: true
end
