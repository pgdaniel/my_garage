class UserFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :generic_image
end
