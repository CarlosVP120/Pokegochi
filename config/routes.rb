# config/routes.rb
Rails.application.routes.draw do
  get 'pokemon/index'
  post 'pokemon/feed', to: 'pokemon#feed', as: 'feed_pokemon'
  post 'pokemon/new_pokemon', to: 'pokemon#new_pokemon', as: 'new_pokemon'
  post 'pokemon/reset_stats', to: 'pokemon#reset_stats', as: 'reset_stats'
  post 'pokemon/add_berry', to: 'pokemon#add_berry', as: 'add_berry'
  root 'pokemon#index'
end
