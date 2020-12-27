Rails.application.routes.draw do
  resources :contact_submissions, only: [:new, :create]
end
