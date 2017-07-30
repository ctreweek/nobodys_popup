# Rails.application.routes.draw do
#   devise_for :users
#   root to: 'pages#home'
#     resources :events, only: [:index, :show] do
#       get 'attend', to: "events#attend"
#       resources :attendees, only: [:index, :new, :create]
#     end

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    root to: 'pages#home'
    resources "contacts", only: [:new, :create]
    get "/about" => "pages#about", as: :about_page


    resources :events, only: [ :show] do
      get 'attend', to: "events#attend"
      resources :attendees, only: [:index, :new, :create]
    end
    resources :attendees, only: [:destroy]
end
