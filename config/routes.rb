Rails.application.routes.draw do
  # this below does not need to be nested
  resources :reviews, only: [:show, :edit, :update, :destroy]

  resources :restaurants do
    # anything in here will get /restaurants/ in front of it
    resources :reviews, only: [:index, :new, :create]
    # "nested resources"
  end
end
