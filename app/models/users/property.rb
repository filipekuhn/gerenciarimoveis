class Users::Property < ApplicationRecord
  belongs_to :user
  has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :title, :description, :price, :flag, :address, presence: true
end
