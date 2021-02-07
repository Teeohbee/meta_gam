Rails.application.routes.draw do
  root 'pages#home'
  get '/top_ten', to: 'pages#top_ten'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
