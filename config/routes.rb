Rails.application.routes.draw do
  resources :articles do
    collection do
      get :autocomplete
    end 
  end 
  root 'articles#index'
end
