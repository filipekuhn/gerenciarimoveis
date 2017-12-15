class Property < ApplicationRecord
  belongs_to :user
  has_many :pictures, dependent: :destroy

  has_many :visitors_properties, dependent: :destroy


  validates :title, :description, :price, :flag, :address, presence: true
end
