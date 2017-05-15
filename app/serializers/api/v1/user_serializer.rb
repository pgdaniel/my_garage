class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name

  has_many :user_favorites
end
