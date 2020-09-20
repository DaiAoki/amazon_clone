class ProductSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :price, :stock, :image, :category_id, :created_at, :updated_at
  belongs_to :category
end
