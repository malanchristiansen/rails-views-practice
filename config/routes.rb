Rails.application.routes.draw do
  get "/projects", to: "projects#index"
  get "/projects/new", to: "projects#new"
  get "projects/:id", to: "projects#show", as: "project"
end
