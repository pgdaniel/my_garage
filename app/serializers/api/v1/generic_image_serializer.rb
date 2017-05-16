class Api::V1::GenericImageSerializer < ActiveModel::Serializer
  attributes :id, :image

  def image
    object.image.small
  end
end
