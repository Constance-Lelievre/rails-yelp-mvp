class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  # validates :phone_number, presence: true
  # validates :content, presence: true
  # validates :rating, numericality: { only_integer: true }
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
