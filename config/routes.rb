Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# See all restaurants
get 'tasks', to: 'tasks#index'
# Create a restaurant
get "tasks/new", to: "tasks#new"
post "tasks", to: "tasks#create"
# See details about one restaurant
get "tasks/:id", to: "tasks#show", as: :task

# Update a restaurant
get "tasks/:id/edit", to: "tasks#edit"
patch "tasks/:id", to: "tasks#update"
patch "tasks/:id/complete", to: "tasks#mark_as_completed", as: :complete_task
# Destroy a restaurant
delete "tasks/:id", to: "tasks#destroy"
end
