class IndexController < ApplicationController

  def index
    @amazon_product = AmazonProduct.new(params[:q]) if params[:q]
  end

end