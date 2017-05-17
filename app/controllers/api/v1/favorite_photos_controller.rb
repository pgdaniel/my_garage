module Api
  module V1
    class FavoritePhotosController < BaseApiController
      before_action :authenticate_user!

      def index
        render json: { status: 200 }
      end

      def update
        if !already_favorited? && current_user.user_favorites.create(
          generic_image: generic_image
        )
          render_created
        else
          render_unprocessable_entity
        end
      end

      def destroy
        if destroy_generic_image?
          render_accepted
        else
          render_unprocessable_entity
        end
      end

      private

      def already_favorited?
        current_user.user_favorites.map(&:generic_image_id).include?(
          generic_image.id
        )
      end

      def destroy_generic_image?
        generic_image_to_destroy = current_user.user_favorites.find_by(
          generic_image: generic_image
        )

        if generic_image_to_destroy
          generic_image_to_destroy.destroy
        else
          false
        end
      end

      def generic_image
        @generic_image = GenericImage.find(params[:id])
      end
    end
  end
end
