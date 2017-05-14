module Api
  module V1
    class FavoritePhotosController < ApplicationController
      def index
        render json: { status: 200 }
      end

      def create
      end

      def destroy
      end
    end
  end
end
