Loop::Application.routes.draw do
    resources :calendars do
        get :get_events, on: :collection
    end
    root to: 'calendars#new'
end
