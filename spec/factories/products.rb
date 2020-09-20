FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "product_#{n}" }
    price { 1000 }
    stock { 10 }
    association :category
  end
end
