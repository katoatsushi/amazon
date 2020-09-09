class UserProductController < ApplicationController
  def create
  	# binding.pry
  	lot = params[:user_product][:lot].to_i
  	up = UserProduct.new(user_id: current_user.id, product_id: params[:product_id], lot: lot)
  	p = Product.find(params[:product_id])
  	last = p.count
  	p.count = last - lot
  	p.save
  	up.save
  	redirect_to root_path
  end

  def destroy
  end
end
