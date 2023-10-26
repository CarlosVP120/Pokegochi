# config/routes.rb
Rails.application.routes.draw do
  get 'pokemon/index'
  post 'pokemon/feed', to: 'pokemon#feed', as: 'feed_pokemon'
  post 'pokemon/new_pokemon', to: 'pokemon#new_pokemon', as: 'new_pokemon'
  post 'pokemon/reset_stats', to: 'pokemon#reset_stats', as: 'reset_stats'
  root 'pokemon#index'
end
