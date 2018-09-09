Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get "/home" , controller: :home, action: :index
  
  resources :deputies, only: [:index, :show] do
    member do
      post  :follow
    end
  end

  resources :users, only: [:create, :edit, :update] do
    collection do
      post :save_token
    end
  end

end
