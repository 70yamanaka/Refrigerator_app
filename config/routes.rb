Rails.application.routes.draw do
  root to: "puts#index"
  devise_for :users
end
