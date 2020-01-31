Rails.application.routes.draw do
  devise_for :users

  root "puts#index"

  resources :puts do
    collection do
      get 'top'
      get 'search'
      get 'refrigerator_meat'
      get 'refrigerator_vegetable'
      get 'refrigerator_fish'
      get 'refrigerator_fruit'
      get 'refrigerator_bread'
      get 'refrigerator_rice'
      get 'refrigerator_milk'
      get 'refrigerator_desert'
      get 'refrigerator_drink'
      get 'refrigerator_spice'
      get 'refrigerator_other'
      get 'freezer_meat'
      get 'freezer_vegetable'
      get 'freezer_fish'
      get 'freezer_fruit'
      get 'freezer_bread'
      get 'freezer_icefood'
      get 'freezer_milk'
      get 'freezer_desert'
      get 'freezer_drink'
      get 'freezer_icespice'
      get 'freezer_other'
    end
  end
end
