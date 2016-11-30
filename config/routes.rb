Rails.application.routes.draw do

  resources :links, only: [:new, :create, :show] do
    resource :upvote, only: [:create]
    resource :downvote, only: [:create]
  end

  root to: "links#index"
end
