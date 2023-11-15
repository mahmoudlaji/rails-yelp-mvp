Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    collection do
      get :best
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
