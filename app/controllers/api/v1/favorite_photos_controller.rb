module Api
  module V1
    class FavoritePhotosController < ApplicationController
      before_action :authenticate_user!

      def index
        render json: { status: 200 }
      end

      def update
        if !already_favorited? && current_user.user_favorites.create(
          generic_image: generic_image
        )
          render json: nil, status: :created
        else
          render json: nil, status: :unprocessable_entity
        end
      end

      def destroy
        found_generic_image = current_user.user_favorites.find_by(
          generic_image: generic_image
        )

        if found_generic_image.destroy
          render json: nil, status: :accepted
        else
          render json: nil, status: :unprocessable_entity
        end
      end

      private

      def already_favorited?
        current_user.user_favorites.map(&:generic_image_id).include?(
          generic_image.id
        )
      end

      def generic_image
        @generic_image = GenericImage.find(params[:id])
      end
    end
  end
end
