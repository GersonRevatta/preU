class Theme < ApplicationRecord
  belongs_to :category
  validates :name ,:image, presence: true
  mount_uploader :image, ImageUploader
end
