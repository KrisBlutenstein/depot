class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(4)
  end
end
