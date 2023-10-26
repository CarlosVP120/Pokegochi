# app/controllers/pokemon_controller.rb
class PokemonController < ApplicationController
  def index
    # Generate a random Pokemon ID between 1 and 898 (total number of Pokemon in the PokeAPI)
    random_pokemon_id = rand(1..898)
    @pokemon_data = PokeApiService.get_pokemon(random_pokemon_id)
    @pokemon_level = 1  # Initial level
    @berries = PokeApiService.get_berries
  end

  def feed
    # Increment the Pokemon's level
    @pokemon_level = PokeApiService.feed_pokemon(params[:level].to_i)

    # Redirect back to the Pokemon's details page
    redirect_to action: 'index'
  end
end
