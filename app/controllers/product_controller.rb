class ProductController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
     @user_product = UserProduct.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.save
    redirect_to root_path
  end


  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.update(product_params)
  end

  def destroy
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title,:detail,:count,:price,:user_id)
  end
end

