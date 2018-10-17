class Rotate < ApplicationRecord
  has_and_belongs_to_many :sneakers
  belongs_to :user, optional: true

  def self.search_by(search_term)
    where("name ILIKE :search_term", search_term: "%#{search_term}%")
  end

end

# Rotate.where
