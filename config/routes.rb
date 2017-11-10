Rails.application.routes.draw do
  root 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"

  resources :cocktails, only: %i(index new show create) do
    resources :doses, only: %i(new create)
  end
  resources :doses, only: %i(destroy)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
