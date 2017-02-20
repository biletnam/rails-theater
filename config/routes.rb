Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "movies#index"

  resources :sessions, only: [:new, :create]

  resources :movies
  resources :showings
  resources :sales
  resources :theaters do
    resources :auditoria
  end

  delete "/logout" => "sessions#destroy"
end
