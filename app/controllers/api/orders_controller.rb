class Api::OrdersController < ApplicationController
  def create
    @order = Order.create(user_id: current_user.id)
    @order.calculate_cart

    render 'show.json.jbuilder'
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end
end
