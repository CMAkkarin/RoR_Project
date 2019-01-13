Rails.application.routes.draw do
  
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

  # maps HTTP verbs to controller actions
  resources :posts do 
    resources :comments
  end
end
