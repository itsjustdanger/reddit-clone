Rails.application.routes.draw do

  resources :links, only: [:new, :create, :show] do
    resource :upvote, only: [:create]
    resource :downvote, only: [:create]
  end

  namespace :api do
    namespace :v1 do
      resources :links, only: [:index]
    end
  end

  root to: "links#index"
end
