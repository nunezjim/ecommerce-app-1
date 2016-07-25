class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
     )
    @product.save
    flash[:success] = "#{@product.name} was successfully created"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
   end

   def update
      @product = Product.find_by(id: params[:id])
      @product.update(
        name: params[:name],
        price: params[:price],
        image: params[:image],
        description: params[:description]
       )
       flash[:success] = "#{@product.name} was successfully updated"
       redirect_to "/products/#{@product.id}"
   end

   def destroy
     @product = Product.find_by(id: params[:id])
     @product.destroy
     flash[:success] = "#{@product.name} was successfully deleted"
     redirect_to "/products/"
   end
end

#  def form_post
#    @enter = params[:enter]
#    render "forms.html.erb"
#  end

#  def edit
#    @product = Product.find_by(id: params[:id])
#    render "edit.html.erb"
#  end

  # def create
  # Product.create(
  #   name: params[:name],
  #   price: params[:price],
  #   image: params[:image],
  #   description: params[:description]
  #  )
  #  render "forms.html.erb"
  # end
