class Listing < ApplicationRecord
  belongs_to :user
  validates :title, :description, :condition, :price, presence: true
  has_one_attached :picture 
end
