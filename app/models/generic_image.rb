class GenericImage < ApplicationRecord
  mount_uploader :image, HomeImageUploader
  has_many :user_favorites
end
