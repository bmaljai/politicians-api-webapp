Rails.application.routes.draw do
  get '/politicians', to: 'politicians#index'
  post '/politicians', to: 'politicians#create'
  get '/politicians/:id', to: 'politicians#show'
  patch '/politicians/:id', to: 'politicians#update'
  delete '/politicians/:id', to: 'politicians#destroy'
end
