class Property < ApplicationRecord
  belongs_to :user
  has_many :pictures, dependent: :destroy

  has_many :visitors_property

  validates :title, :description, :price, :flag, :address, presence: true
end
