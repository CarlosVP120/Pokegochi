# config/routes.rb
Rails.application.routes.draw do
  get 'pokemon/index'
  post 'pokemon/feed', to: 'pokemon#feed', as: 'feed_pokemon'
  root 'pokemon#index'
end
