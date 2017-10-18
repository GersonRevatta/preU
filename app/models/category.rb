class Category < ApplicationRecord
  has_many :themes 
  has_many :levels
  validates :name ,:content,:image, presence: true
  mount_uploader :image, ImageUploader
end
