class Visitor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :visitors_properties, dependent: :destroy

  validates :name, presence: true

  def self.search(query)
    order(:name).where("name ilike ?", "%#{params[:query]}%")
  end
end
