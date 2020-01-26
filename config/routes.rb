Rails.application.routes.draw do
  devise_for :users

  root "puts#index"

  resources :puts do
    collection do
      get 'top'
      get 'search'
    end
  end
end
