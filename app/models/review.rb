class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :presence => true
  validates :content, :presence => true
  validates :product_id, :presence => true
  validates :rating, numericality: { greater_than: 0, less_than: 6 }
end