Rails.application.routes.draw do
  get 'lists/new'

  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/edit'
  get '/top' => 'homes#top'

  get 'top' => 'home#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
end