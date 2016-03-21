Rails.application.routes.draw do
  root 'web/posts#index'
  scope module: :web do
    resource :session, only: [:new, :create, :destroy]
    resources :posts, only: [:index, :show] do
      resources :comments, only: [:create], controller: 'posts/comments'
    end
    resources :users, only: [:index, :show, :new, :create] do
      resources :posts, only: [:index, :new, :create], controller: 'users/posts'
    end
  end
end
