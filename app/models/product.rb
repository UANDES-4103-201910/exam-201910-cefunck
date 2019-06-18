class Product < ApplicationRecord
  belongs_to :order
  validates :brand, :model, :price, :short_description, :long_description, :type_of, presence: true
end
