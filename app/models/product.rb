class Product < ApplicationRecord
  belongs_to :categorie

  has_many :order_items
  has_many :rates, dependent: :destroy
  has_many :comments
  has_many :recently_vieweds, dependent: :destroy

  validates :price, presence: true, numericality: true
  validates :quantity, presence: true, numericality: {only_integer: true}
  validates :categorie_id, presence: true

  scope :of_ids, -> ids {where id: ids}
  scope :top_hot_order_products, -> {joins(:order_items).group("product.id").order("AVG(order_items.quantity) DESC").limit(5)}
  scope :newest, -> {order created_at: :desc}
end
