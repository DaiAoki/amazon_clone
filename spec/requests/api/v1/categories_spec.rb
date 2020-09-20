require 'rails_helper'

describe 'Category API' do
  describe 'GET /api/v1/categories' do
    before do
      FactoryBot.create_list(:category, 5)
    end

    it 'return categories' do
      get '/api/v1/categories'

      expect(response.status).to eq(200)
      expect(json['data'].count).to eq(5)
    end
  end
end
