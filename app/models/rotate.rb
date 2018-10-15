class Rotate < ApplicationRecord
  has_and_belongs_to_many :sneakers
  belongs_to :user, optional: true
end
