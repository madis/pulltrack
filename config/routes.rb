Rails.application.routes.draw do
  resources :pull_requests
  get '/pull_requests', to: 'pull_requests#index'
end
