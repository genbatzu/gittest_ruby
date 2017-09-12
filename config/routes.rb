Rails.application.routes.draw do


  devise_for :users
  #get 'pages/contact'
  get "contact", to: "pages#contact" #maps localhost.com/pages/contact to localhost.com/contact
  #get 'pages/about'
  get "about", to: "pages#about"
  #get 'pages/home'
  get "blog", to: redirect("https://google.com") #redirect to external site
  get "error", to: "pages#error"
  
  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home' #root sets the homepage should be at the bottom of the code. "whatver is on the bottm here, is the last route"
  
  get "*path", to: redirect("/error") #catch all, must be at the end of routes.rb, but it must get a get function above, too
end
