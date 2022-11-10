class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, format: { with: /[1-5]/}
  validates :content, presence: true
end
