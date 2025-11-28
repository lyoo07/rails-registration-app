class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :impression, presence: true
  validates :star, presence: true
end
