Rails.application.routes.draw do

resources :articles, only: [:new, :create, :show, :update, :destroy, :edit, :index]
root 'articles#index'

end
