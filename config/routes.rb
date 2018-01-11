Rails.application.routes.draw do
  get 'contact' => 'contact#contact'

  get 'event_1' => 'events#event_1'

  get 'event_2' => 'events#event_2'

  get 'event_3' => 'events#event_3'

  get 'event_4' => 'events#event_4'

  get 'event_5' => 'events#event_5'

  resources :class_cals, :charges
  get 'classes' => 'classes#classes'

  get 'instructors' => 'instructors#instructors'

  devise_for :users
  root 'home#home'

  get 'new_user' => 'sessions#new' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
