class Garage < ApplicationRecord
  belongs_to :user
  has_many :garage_items
  has_many :follows, as: :followable

  validates :name, presence: true, uniqueness: true
end
