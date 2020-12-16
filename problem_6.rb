class Shop < ApplicationRecord
  has_many :products
end

class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories
end

class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  belongs_to :shop

  has_many :price_dates
end

class ProductCategory < ApplicationRecord
  belongs_to :product
  belongs_to :category
end

class PriceDate < ApplicationRecord
  belongs_to :product

  # attributes :product_id, :price, :date
end