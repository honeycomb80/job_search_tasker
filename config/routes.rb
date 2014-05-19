JobSearchTasker::Application.routes.draw do
  devise_for :users

  root 'jobs#index'
  resources :jobs
  
  post '/results', to: 'jobs#results', as: 'results'

end

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              jobs#index
#                     jobs GET    /jobs(.:format)                jobs#index
#                          POST   /jobs(.:format)                jobs#create
#                  new_job GET    /jobs/new(.:format)            jobs#new
#                 edit_job GET    /jobs/:id/edit(.:format)       jobs#edit
#                      job GET    /jobs/:id(.:format)            jobs#show
#                          PATCH  /jobs/:id(.:format)            jobs#update
#                          PUT    /jobs/:id(.:format)            jobs#update
#                          DELETE /jobs/:id(.:format)            jobs#destroy
