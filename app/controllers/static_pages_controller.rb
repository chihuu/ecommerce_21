class StaticPagesController < ApplicationController
  def home

  end

  def about
  end

  def contact
  end

  def index
    @top_new_products_by_day = Product.newest.paginate(page: params[:page], per_page: 5)
    @top_hot_order_products = Product.top_hot_order_products
    if logged_in?
      @recently_products = Product.of_ids RecentlyViewed.product_ids_by_user(current_user.id)
    end
  end
end
