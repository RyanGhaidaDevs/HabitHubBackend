Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create, :index]

  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  post :reps, to: "workouts#create"

  post :meditation, to: "meditations#create"


  post :journal, to: "journals#create"
  post :shower, to: "showers#create"

  
end
