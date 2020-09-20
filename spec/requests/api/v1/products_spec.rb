require 'rails_helper'

describe 'Product API' do
  describe 'GET /api/v1/products' do
    before do
      FactoryBot.create_list(:product, 5)
    end

    it 'return products' do
      get '/api/v1/products'

      expect(response.status).to eq(200)
      expect(json['data'].count).to eq(5)
    end
  end

  describe 'GET /api/v1/products/:id' do
    let!(:product) { FactoryBot.create(:product) }

    it 'returns product' do
      get "/api/v1/products/#{product.id}"

      expect(response.status).to eq(200)
      expect(json['data']).to have_attribute(:name).with_value(product.name)
      expect(json['data']).to have_relationship(:category)
    end
  end
end
