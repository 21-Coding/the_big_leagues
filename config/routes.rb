Rails.application.routes.draw do
  resources :teams do
    resources :tournaments
  end
end
