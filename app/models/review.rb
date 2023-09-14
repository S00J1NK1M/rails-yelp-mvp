class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, presence: true, inclusion: 1..5, numericality: { only_integer: true }
end
