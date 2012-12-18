SampleApp::Application.routes.draw do
 # get "users/new"
  resources :users
  
  root :to => "pages#home"
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  match '/signup', :to => 'users#new'

end
