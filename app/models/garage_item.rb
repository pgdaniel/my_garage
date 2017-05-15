class GarageItem < ApplicationRecord
  belongs_to :garage
  belongs_to :generic_image
end
