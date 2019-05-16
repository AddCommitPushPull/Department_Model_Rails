Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'items/edit'

  root "departments#index"
  resources :departments do
    resources :items
  end

  resources :items do

  end

  get "/departments", to: "departments#index", as: "all_the_departments"
  get "/departments/:id", to:  "departments#show", as: "the_one_department"
  delete "/departments/:id", to: "sub#destroy", as: "destroy_the_sub"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
