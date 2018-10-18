class Rotate < ApplicationRecord
  has_and_belongs_to_many :sneakers
  validates :sneakers, :length => {is: 7}
  belongs_to :user, optional: true
  validates :name, presence: true
  acts_as_votable

  def self.search_by(search_term)
    where("name ILIKE :search_term", search_term: "%#{search_term}%")
  end

end
