class Restaurant < ActiveRecord::Base
  validates :name, length: {minimum: 3}, uniqueness: true
    
  def average_rating
    return 'N/A' if reviews.none?
    reviews.average(:rating)
  end

  has_many :reviews, dependent: :destroy
end
