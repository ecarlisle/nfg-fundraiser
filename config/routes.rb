Rails.application.routes.draw do
  resources :fundraisers
  root 'fundraisers#index'
end
