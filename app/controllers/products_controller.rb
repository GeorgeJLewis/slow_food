class ProductsController < ApplicationController
  def index
    @categories = Category.all
  end

  def edit
    @product = Product.find_by(id: params[:id])
 end

 def update
   @product = Product.find_by(id: params[:id])
   if @product.update_attributes(products_params)
     flash[:notice] = "You have successfully updated product"
     redirect_to products_path(@product)
   else
     flash[:alert] = "Error updating product!"
     render :edit
   end
 end

 private
 def products_params
   params.require(:product).permit(:name, :description, :price, :category)
 end
end
