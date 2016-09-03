Rails.application.routes.draw do
  resources :advertisements
  resources :posts

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/FAQ'

  root 'welcome#index'

end
