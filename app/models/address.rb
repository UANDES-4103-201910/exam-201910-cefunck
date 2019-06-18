class Address < ApplicationRecord
  belongs_to :user
  validates :phone, :line_1, :line_2, :city, :country, :zip_code, presence: true
end
