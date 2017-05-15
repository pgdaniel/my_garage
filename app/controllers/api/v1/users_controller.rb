module Api
  module V1
    class UsersController < ActionController::API
      def index
        render json: User.includes(:user_favorites).last(100)
      end
    end
  end
end
