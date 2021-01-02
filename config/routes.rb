Rails.application.routes.draw do
  root to: "pages#show", id: "home"

  get "/pages/*id" => "pages#show", as: :page, format: false

  resources :contact_submissions, only: [:new, :create]
end
