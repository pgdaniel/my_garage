class UserFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :generic_image

  accepts_nested_attributes_for :generic_image
end
