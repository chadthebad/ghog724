Ghog724::Application.routes.draw do

  resources :albums

  root :to => 'albums#index'
end
