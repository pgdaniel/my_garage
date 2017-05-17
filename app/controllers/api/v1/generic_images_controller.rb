module Api
  module V1
    class GenericImagesController < BaseApiController
      def index
        render json: GenericImage.all
      end
    end
  end
end
