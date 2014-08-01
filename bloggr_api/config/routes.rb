Rails.application.routes.draw do
  mount Admin::Engine => '/admin'

  root 'application#index'

  namespace :api, defaults: { format: 'json'  } do
    scope '/v1', module: :v1 do
      resources :posts
    end
  end

  get '*route' => 'application#index'
end
