Rails.application.routes.draw do
  root to: "links#index"

  resources :links, only: [:new, :index, :create, :show]
end
