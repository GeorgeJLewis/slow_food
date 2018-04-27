class ProductsController < ApplicationController
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
   else
     flash[:alert] = "Error updating product!"
     render :edit
   end
 end

 # The show action renders the individual post after retrieving the the id
 def show
 end
