Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'birds#index'

  get '/birds' => 'birds#index'

  get '/birds/:id' => 'birds#show'

  post 'birds' => 'birds#create'


end
