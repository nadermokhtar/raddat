Rails.application.routes.draw do

resources :hookups, only: [:new, :create, :show]
root to:  "hookups#index"
end
