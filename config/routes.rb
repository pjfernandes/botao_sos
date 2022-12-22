Rails.application.routes.draw do
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, only: [:index, :new, :create]
  get 'api/get_events', to: 'events#get_events'
  get 'api/post_event', to: 'events#post_event'

end
