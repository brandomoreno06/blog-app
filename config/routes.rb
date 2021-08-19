Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles/new' =>'articles#create', as: 'create_article'
  get '/articles/name/:name' => 'articles#find_name', as: 'find_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  get '/articles/:id' => 'articles#show', as: 'show_article'
  patch '/articles/:id/edit' => 'articles#update', as: 'update_article'
  delete '/articles/:id' => 'articles#delete', as: 'delete_article'
end
