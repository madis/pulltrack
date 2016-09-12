Rails.application.routes.draw do
  get '/pull_requests', to: 'pull_requests#index'
end
