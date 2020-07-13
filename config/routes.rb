Rails.application.routes.draw do
  resources :cars do
  resources :service_entries
  end
  devise_for :users
  
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cars#index"



end
