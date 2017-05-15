class ProfileController < ApplicationController
  before_action :authenticate_user!
  
  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end
end
