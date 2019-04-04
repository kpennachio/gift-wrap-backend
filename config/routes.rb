Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :budgets, only: [:index, :create, :update, :destroy]
      resources :gifts, only: [:index, :create, :update, :destroy]
      resources :people, only: [:index, :create, :update, :destroy]
      resources :events, only: [:index, :create, :update, :destroy]
      resources :person_gift_ideas, only: [:index, :create, :update, :destroy]
      resources :person_gift_events, only: [:index, :create, :update, :destroy]
      resources :event_gift_ideas, only: [:index, :create, :update, :destroy]
    end
  end
end
