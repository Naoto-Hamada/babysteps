Rails.application.routes.draw do
  devise_for :users
  resources :articles, only: [:new, :create]
  resources :tweets do
    resources :comments, only: [:create]
  end
  root 'articles#index'
  get 'info' => 'top#info'
  get 'profile' => 'top#profile'
  resources :users, only: [:show] do
    resources :wants, only: [:new, :create]
  end
end


# ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#                   Prefix Verb   URI Pattern                          Controller#Action
# ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#         new_user_session GET    /users/sign_in(.:format)             devise/sessions#new
#             user_session POST   /users/sign_in(.:format)             devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)            devise/sessions#destroy
#            user_password POST   /users/password(.:format)            devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)        devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)       devise/passwords#edit
#                          PATCH  /users/password(.:format)            devise/passwords#update
#                          PUT    /users/password(.:format)            devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)              devise/registrations#cancel
#        user_registration POST   /users(.:format)                     devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)             devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                devise/registrations#edit
#                          PATCH  /users(.:format)                     devise/registrations#update
#                          PUT    /users(.:format)                     devise/registrations#update
#                          DELETE /users(.:format)                     devise/registrations#destroy
#                 articles POST   /articles(.:format)                  articles#create
#              new_article GET    /articles/new(.:format)              articles#new
#           tweet_comments POST   /tweets/:tweet_id/comments(.:format) comments#create
#                   tweets GET    /tweets(.:format)                    tweets#index
#                          POST   /tweets(.:format)                    tweets#create
#                new_tweet GET    /tweets/new(.:format)                tweets#new
#               edit_tweet GET    /tweets/:id/edit(.:format)           tweets#edit
#                    tweet GET    /tweets/:id(.:format)                tweets#show
#                          PATCH  /tweets/:id(.:format)                tweets#update
#                          PUT    /tweets/:id(.:format)                tweets#update
#                          DELETE /tweets/:id(.:format)                tweets#destroy
#                     root GET    /                                    articles#index
#                     info GET    /info(.:format)                      top#info
#                  profile GET    /profile(.:format)                   top#profile
#               user_wants POST   /users/:user_id/wants(.:format)      wants#create
#            new_user_want GET    /users/:user_id/wants/new(.:format)  wants#new
#                     user GET    /users/:id(.:format)                 users#show
# ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
