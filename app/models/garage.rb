class Garage < ApplicationRecord
  belongs_to :user
  has_many :garage_items

  validates :name, presence: true, uniqueness: true
end
