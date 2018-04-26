class OrdersController < ApplicationController
  def show
    @orders = Orders.all
  end
end
