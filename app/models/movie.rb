class Movie < ApplicationRecord

  has_many :parts
  has_many :actors, through: :parts

  mount_uploader :image, ImageUploader

end
