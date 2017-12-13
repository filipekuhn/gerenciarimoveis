class Visitor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :visitors_properties
  has_many :shared_lists, through: :visitors_properties, source: :property

  validates :name, presence: true

  def self.search(query)
    order(:name).where("name ilike ?", "%#{params[:query]}%")
  end
end
