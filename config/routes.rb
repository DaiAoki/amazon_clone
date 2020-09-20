Rails.application.routes.draw do
  instance_eval(File.read("#{Rails.root}/config/routes/api.rb"))

  root 'pages#index'
  match "*frontend", to: "pages#index", via: :all
end
