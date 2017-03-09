class Product < ApplicationRecord
  belongs_to :categorie
  has_many :order_items
  has_many :rates, dependent: :destroy
  has_many :comments
end
