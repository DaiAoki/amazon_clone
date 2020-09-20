namespace :api do
  namespace :v1 do
    resources :products, only: %w(index show)
    resources :categories, only: %w(index)
  end
end
