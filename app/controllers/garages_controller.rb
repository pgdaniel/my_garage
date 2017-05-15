class GaragesController < ApplicationController
  def new
    @garage = current_user.garages.new
  end

  def create
    @garage = current_user.garages.new(garage_params)

    if @garage.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def garage_params
    params.require(:garage).permit(:name)
  end
end
