class HomeController < ApplicationController

  def index
    @products = Product.all
    @user = User.all
    @categories = Category.all
    cate = params[:cate]

    if !cate.nil?
      @products = Product.where(category_id => :cate)
    else
      @products = Product.all
    end
  end
end
