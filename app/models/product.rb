class Product < ApplicationRecord
  belongs_to :category

  validates :name, :price, :stock, presence: true
  validates :price, :stock, numericality: { greater_than_or_equal_to: 0 }

  mount_uploader :image, ProductImageUploader
end
