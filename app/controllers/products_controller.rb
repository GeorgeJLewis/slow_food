class ProductsController < ApplicationController
<<<<<<< HEAD
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
=======
 before_action :find_post, only: [:edit, :update, :show, :delete]

 # Index action to render all posts
 def index
   @products = Product.all
 end

 # New action for creating post
 def new
   @products = Product.new
 end

 # Create action saves the post into database
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

 # Edit action retrives the post and renders the edit page
 def edit
 end

 # Update action updates the post with the new information
 def update
   if @products.update_attributes(products_params)
     flash[:notice] = "Successfully updated product!"
     redirect_to products_path(@products)
>>>>>>> admin_form
   else
     flash[:alert] = "Error updating product!"
     render :edit
   end
 end

<<<<<<< HEAD
 private
 def products_params
   params.require(:product).permit(:name, :description, :price, :category)
 end
end
=======
 # The show action renders the individual post after retrieving the the id
 def show
 end
>>>>>>> admin_form
