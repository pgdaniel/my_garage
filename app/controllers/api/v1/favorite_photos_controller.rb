module Api
  module V1
    class FavoritePhotosController < ApplicationController
      before_action :authenticate_user!

      def index
        render json: { status: 200 }
      end

      def update
        if current_user.user_favorites.create!(generic_image: generic_image)
          render json: { status: 200 }
        else
          render json: { status: 403 }
        end
      end

      def destroy
        found_generic_image = current_user.user_favorites.find_by(generic_image: generic_image)
        if found_generic_image.destroy
          render json: { status: 200 }
        else
          render json: { status: 403 }
        end
      end

      private

      def generic_image
        @generic_image = GenericImage.find(params[:id])
      end
    end
  end
end
