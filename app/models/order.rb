class Order < ApplicationRecord
  belongs_to :user
  has_many :products
  has_one :billing_address, class_name: "Address", foreign_key: "billing_address_id"
  has_one :shipping_address, class_name: "Address", foreign_key: "shipping_address_id"
  validates :products, presence: true
end
