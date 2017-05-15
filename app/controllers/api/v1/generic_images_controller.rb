module Api
  module V1
    class GenericImagesController < ActionController::API
      def index
        render json: GenericImage.all
      end
    end
  end
end
