class Actor < ApplicationRecord

  has_many :parts
  has_many :movies, through: :parts

  mount_uploader :image, ImageUploader

  validates :first_name, :last_name,  presence: true

end
