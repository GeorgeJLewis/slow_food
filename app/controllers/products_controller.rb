class ProductsController < ApplicationController
 def index
   @products = Product.all
 end

 def new
   @products = Product.new
 end

 def create
   @products = Product.new
   if @products.save(products_params)
     flash[:notice] = "Successfully created product!"
     redirect_to products_path(@products)
   else
     flash[:alert] = "Error creating new product!"
     render :new
   end
 end

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

 def show
 end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      flash[:notice] = "You have successfully created product"
      redirect_to products_path(@product)
    else
      flash[:alert] = "Error creating product!"
      render "new"
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:notice] = "You have successfully deleted product"
    redirect_to products_path
  end

 private
 def products_params
   params.require(:product).permit(:name, :description, :price, :category_id)
 end
end
