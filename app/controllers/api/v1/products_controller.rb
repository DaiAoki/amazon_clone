class Api::V1::ProductsController < Api::ApplicationController
  def index
    products = Product.all
    json_string = ProductSerializer.new(products, include: [:category]).serialized_json

    render json: json_string, status: :ok
  end

  def show
    product = Product.find(params[:id])
    json_string = ProductSerializer.new(product, include: [:category]).serialized_json

    render json: json_string, status: :ok
  end
end
