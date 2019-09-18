# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.all
    @totalproducts = Product.all.count
    @averageprice = Product.average(:price)
    @totalitems = Product.sum(:stock_quantity)
  end
end
