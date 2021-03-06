class User < ApplicationRecord
  has_many :orders
  has_many :addresses
  validates :first_name, :last_name, :email, presence: true
end
