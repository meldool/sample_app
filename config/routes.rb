Rails.application.routes.draw do
  
  root 'static_pages#home' # The main page is set to to the Home page.
  
  #get 'static_pages/home' => Will return Home page if /static_pages/home is entered.
  # Will return a page below if /page_name is entered i.e. /help.
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup', to: 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
