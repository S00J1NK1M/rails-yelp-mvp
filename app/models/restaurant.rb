class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # if i have a restaurant, then i can say restaurant.reviews => []
  
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
