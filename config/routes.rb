Rails.application.routes.draw do

  namespace :admin do
    get 'slots/create'
    get 'slots/destroy'
    get 'slots/edit'
    get 'slots/update'
  end
  namespace :admin do
    get 'tracks/edit'
    get 'tracks/update'
  end
  namespace :admin do
    get 'days/edit'
    get 'days/update'
  end
  namespace :admin do
    root 'home#index'
    resources :conferences, only:[ :create, :destroy, :edit, :update]
    resources :days, only: [ :edit, :update ]
    resources :tracks, only: [ :edit, :update ]
    resources :slots, only: [ :create, :destroy, :edit, :update ]
  end
  get 'participations/create'
  get 'participations/destroy'
  namespace :mypage do
    root to: 'home#index'
    resources :users, only: [ :show, :update, :edit ]
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }



  root to: 'conferences#index'

  resources :conferences, only: [ :show, :index ]
  resources :days, only: [ :show ]
  resources :slots, only: [ :show ]
  resources :participations, only: [ :create, :destroy ]
 
end

#11/12　bin/rails g devise:controllers usersした際の反応
#Some setup you must do manually if you haven't yet:

#Ensure you have overridden routes for generated controllers in your routes.rb.
#For example:

#  Rails.application.routes.draw do

#  namespace :admin do
#    get 'conferences/create'
#    get 'conferences/destroy'
#    get 'conferences/edit'
#    get 'conferences/update'
#  end
#  namespace :admin do
#    get 'home/index'
#  end
#  get 'participations/create'
#  get 'participations/destroy'
#  namespace :mypage do
#    get 'users/show'
#    get 'users/edit'
#    get 'users/update'
#  end
#    devise_for :users, controllers: {
#      sessions: 'users/sessions'
#    }
#  end
