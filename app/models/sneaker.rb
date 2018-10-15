class Sneaker < ApplicationRecord
  belongs_to :brand, optional: true
  has_and_belongs_to_many :rotates
end
