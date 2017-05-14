class UsersController < Devise::UsersController

  def index
    @users = UserDecorator.wrap(User.all)
  end

  def show
    @user = UserDecorator.new(User.find(params[:id]))
  end
end
