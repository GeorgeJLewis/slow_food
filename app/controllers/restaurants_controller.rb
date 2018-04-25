class RestaurantsController < ApplicationController
  def index
    @products = Product.all
    @categorise = Category.all
  end
end
