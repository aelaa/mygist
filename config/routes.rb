Rails.application.routes.draw do
  root 'web/posts#index'
  scope module: :web do
    resource :session, only: [:new, :create, :destroy]
    resources :posts, only: [:index, :show]
    resources :users, only: [:index, :show, :new, :create] do
      resources :posts, only: [:index, :new, :create], controller: 'users/posts'
    end
  end
end
