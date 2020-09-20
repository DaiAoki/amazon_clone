class Api::V1::CategoriesController < Api::ApplicationController
  def index
    categories = Category.all
    json_string = CategorySerializer.new(categories).serialized_json

    render json: json_string, status: :ok
  end
end
