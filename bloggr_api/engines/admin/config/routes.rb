Admin::Engine.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    resources :posts
  end

  get '/', to: 'application#index'
  get '*route', to: 'application#index'
end
