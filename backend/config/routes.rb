Rails.application.routes.draw do
  post '/upload', to: 'image_files#create'

  resources :image_files
end
