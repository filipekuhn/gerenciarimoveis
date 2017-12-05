class Property < ApplicationRecord
  belongs_to :user
  has_many :pictures, dependent: :destroy

  validates :title, :description, :price, :flag, :address, presence: true
end
