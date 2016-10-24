Rails.application.routes.draw do
  root :to => "ptos#index"
  # Routes for the Pto resource:
  # CREATE
  get "/ptos/new", :controller => "ptos", :action => "new"
  post "/create_pto", :controller => "ptos", :action => "create"

  # READ
  get "/ptos", :controller => "ptos", :action => "index"
  get "/ptos/:id", :controller => "ptos", :action => "show"

  # UPDATE
  get "/ptos/:id/edit", :controller => "ptos", :action => "edit"
  post "/update_pto/:id", :controller => "ptos", :action => "update"

  # DELETE
  get "/delete_pto/:id", :controller => "ptos", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
