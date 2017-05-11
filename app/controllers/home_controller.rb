class HomeController < ApplicationController
  def show
    @images = GenericImage.all
  end
end
