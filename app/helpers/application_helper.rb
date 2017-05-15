module ApplicationHelper
  def favorited?(generic_image)
    current_user.user_favorites.map(&:generic_image).include?(generic_image)
  end

  def number_of_likes(generic_image)
    generic_image.user_favorites.count
  end
end
