class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, :address, :category, presence: true
  validates :category, format: {
    with: /\A(chinese|belgian|italian|japanese|french)\z/,
    message: 'Category must be Chinese, Belgian, Italian, Japanese or French' }

  def destroy
    self.reviews.destroy_all
    super
  end
end
