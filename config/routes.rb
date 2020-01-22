Rails.application.routes.draw do
  devise_for :users

  root "puts#index"

  resources :puts do
    collection do
      get 'top'
    end
  end
end
