Rails.application.routes.draw do
  devise_for :users

  root to: "puts#index"

  resources :puts do
    collection do
      get 'new'
    end
  end
end
