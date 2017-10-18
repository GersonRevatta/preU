class Level < ApplicationRecord
  belongs_to :category
  validates :name ,:content,:image, presence: true
  mount_uploader :image, ImageUploader
end
