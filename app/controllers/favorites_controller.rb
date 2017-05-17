class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.user_favorites.map(&:generic_image)
  end
end
