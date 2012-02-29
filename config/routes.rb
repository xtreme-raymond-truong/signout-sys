SignoutSys::Application.routes.draw do
  resources :devices, :only => [:create, :destroy]
  
  resources :phones
  resources :people
  resources :signout_logs
end
