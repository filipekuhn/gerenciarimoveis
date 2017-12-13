class Property < ApplicationRecord
  belongs_to :user
  has_many :pictures, dependent: :destroy

  has_many :visitors_properties
  has_many :shared_lists, through: :visitors_properties, source: :visitor

  validates :title, :description, :price, :flag, :address, presence: true
end
