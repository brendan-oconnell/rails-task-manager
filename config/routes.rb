Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources replaces all CRUD actions. I've kept them below for legacy. Details:
  # https://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default
  # https://riptutorial.com/ruby-on-rails/example/1080/resource-routing--basic-
  resources :tasks

  # legacy tasks before refactoring
  # # create a new restaurant - show the new restaurant form
  # # The `new` route needs to be *before* `show` route.
  # get "tasks/new", to: "tasks#new"

  # # add a new restaurant - submit the data
  # post "tasks", to: "tasks#create"

  # # show all tasks
  # get "tasks", to: "tasks#index"

  # # show one task
  # get "tasks/:id", to: "tasks#show", as: :task

  # # edit an existing task step 1: display the existing task in fields
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit

  # # edit an existing task step 2, patch in the new data
  # patch "tasks/:id", to: "tasks#update"

  # # destroy a task
  # delete "tasks/:id", to: "tasks#destroy"
end
