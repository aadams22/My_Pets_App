Rails.application.routes.draw do
  root  'pets#index'
  get 'show' => 'pets#show'
  devise_for :users

  resources :pets

  post '/pets/createOli', to: 'pets#createOli'
  post '/pets/createOlive', to: 'pets#createOlive'

  # resources :pets do
  #   member do
  #     post 'createOli'
  #     post 'createOlive'
  #   end
  # end

end


#MY ROUTES
# Prefix Verb   URI Pattern                     Controller#Action
#    root GET    /                               pets#index
#    show GET    /show(.:format)                 pets#show
# new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
# user_session POST   /users/sign_in(.:format)        devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
# user_password POST   /users/password(.:format)       devise/passwords#create
# new_user_password GET    /users/password/new(.:format)   devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#         PATCH  /users/password(.:format)       devise/passwords#update
#         PUT    /users/password(.:format)       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
# user_registration POST   /users(.:format)                devise/registrations#create
# new_user_registration GET    /users/sign_up(.:format)        devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)           devise/registrations#edit
#         PATCH  /users(.:format)                devise/registrations#update
#         PUT    /users(.:format)                devise/registrations#update
#         DELETE /users(.:format)                devise/registrations#destroy
#    pets GET    /pets(.:format)                 pets#index
#         POST   /pets(.:format)                 pets#create
# new_pet GET    /pets/new(.:format)             pets#new
# edit_pet GET    /pets/:id/edit(.:format)        pets#edit
#     pet GET    /pets/:id(.:format)             pets#show
#         PATCH  /pets/:id(.:format)             pets#update
#         PUT    /pets/:id(.:format)             pets#update
#         DELETE /pets/:id(.:format)             pets#destroy
# createOli_pet PUT    /pets/:id/createOli(.:format)   pets#createOli
# createOlive_pet PUT    /pets/:id/createOlive(.:format) pets#createOlive
#         GET    /pets(.:format)                 pets#index
#         POST   /pets(.:format)                 pets#create
#         GET    /pets/new(.:format)             pets#new
#         GET    /pets/:id/edit(.:format)        pets#edit
#         GET    /pets/:id(.:format)             pets#show
#         PATCH  /pets/:id(.:format)             pets#update
#         PUT    /pets/:id(.:format)             pets#update
#         DELETE /pets/:id(.:format)             pets#destroy
