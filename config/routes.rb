Rails.application.routes.draw do
  root 'pages#index'
  match "*frontend", to: "pages#index", via: :all
end
