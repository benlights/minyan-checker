Rails.application.routes.draw do
  get 'daily_minyan_links/yes/:link' => 'daily_minyan_links#yes'
  resources :minyans do
  	resources :users
  end
  resources :daily_minyan_links
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end
