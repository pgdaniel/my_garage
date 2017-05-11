class GenericImage < ApplicationRecord
  mount_uploader :image, HomeImageUploader
end
