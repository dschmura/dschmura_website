Rails.application.routes.draw do
  root to: 'pages#index'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/privacy', to: 'pages#privacy'

  match '/resume', :to => 'resume#index', via: :get
  get 'contact', to: 'contact_messages#new', as: 'new_contact_message'
  post 'contact', to: 'contact_messages#create', as: 'create_contact_message'
  resources 'feedbacks', only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
