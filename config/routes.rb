Loop::Application.routes.draw do
  get 'sessions/new'

    resources :calendars do
        get :get_events, on: :collection
    end
    get 'signup' => 'users#new'
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
    resources :users 
    root to: 'users#new'
end
