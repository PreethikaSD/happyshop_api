class ProductsController < ApplicationController
  before_action :set_category
  before_action :set_category_product, only: [:show, :update, :destroy]

  # GET /categorys/:category_id/products
  def index
    json_response(@category.products)
  end

  # GET /categorys/:category_id/products/:id
  def show
    json_response(@product)
  end

  # POST /categorys/:category_id/products
  def create
    @category.products.create!(product_params)
    json_response(@category, :created)
  end

  # PUT /categorys/:category_id/products/:id
  def update
    @product.update(product_params)
    head :no_content
  end

  # DELETE /categorys/:category_id/products/:id
  def destroy
    @product.destroy
    head :no_content
  end

  private

  def product_params
    params.permit(:name, :sold_out, :under_sale, :price, :sale_price, :sale_text)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_category_product
    @product = @category.products.find_by!(id: params[:id]) if @category
  end

end
