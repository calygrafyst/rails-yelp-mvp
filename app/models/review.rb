class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }, presence: true, acceptance: { accept: [0, 1, 2, 3, 4, 5] }
end
