class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.includes(:product)
  end

  def create
    @cart_item = CartItem.new(product_id: params[:product_id])
    if @cart_item.save
      redirect_to cart_items_path, notice: "Product added to cart!"
    else
      redirect_to products_path, alert: "Failed to add product."
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: "Item removed from cart."
  end
end
