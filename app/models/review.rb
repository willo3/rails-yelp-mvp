class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true, allow_blank: false
  validates_numericality_of :rating, only_integer: true
  validates_inclusion_of :rating, in: 0..5
end
