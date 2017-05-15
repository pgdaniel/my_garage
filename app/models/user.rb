class User < ApplicationRecord
  enum gender: [ :male, :female ]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_favorites
  has_many :garages
  has_many :follows, as: :followable

  def users_im_following
    User.where(id: follows.where(followable_type: 'User').map(&:item_id))
  end

  def garages_im_following
    User.where(id: follows.where(followable_type: 'Garage').map(&:item_id))
  end
end
