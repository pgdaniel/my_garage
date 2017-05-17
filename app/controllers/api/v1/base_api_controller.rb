module Api
  module V1
    class BaseApiController < ActionController::API
      def render_created
        render json: nil, status: :created
      end

      def render_unprocessable_entity
        render json: nil, status: :unprocessable_entity
      end

      def render_accepted
        render json: nil, status: :accepted
      end
    end
  end
end
