class Sneaker < ApplicationRecord
  belongs_to :brand, optional: true
  has_and_belongs_to_many :rotates

  def self.search_by(search_term)
    # where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    where('name ILIKE :term OR silhouette ILIKE :term OR colorway ILIKE :term', term: "%#{search_term}%")
  end

end
