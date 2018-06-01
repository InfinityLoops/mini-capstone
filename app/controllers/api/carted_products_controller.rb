class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
                                        user_id: 1,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity],
                                        status: "carted"
                                        )
    @carted_product.save
    render 'show.json.jbuilder'
  end
end
