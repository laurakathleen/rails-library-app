Rails.application.routes.draw do

root to: 'grandmas#index'
get '/grandmas', to: 'grandmas#index', as: 'grandmas'
get '/grandmas/new', to: 'grandmas#new', as: 'new_grandma'
post '/grandmas', to: 'grandmas#create'
get '/grandmas/:id', to: 'grandmas#show', as: 'grandma'
get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
end
