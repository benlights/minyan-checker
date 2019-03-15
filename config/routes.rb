Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :minyan, :user, :daily_minyan, :daily_minyan_user
end
