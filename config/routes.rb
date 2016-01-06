Loop::Application.routes.draw do
    resources :calendars do
        get :get_events, on: :collection
    end
    get 'signup' => 'users#new'
    resources :users 
    root to: 'users#new'
end
