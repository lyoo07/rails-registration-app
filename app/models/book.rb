class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :impression, presence: true
  # validates :star, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  has_one_attached :cover
end
