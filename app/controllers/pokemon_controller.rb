# app/controllers/pokemon_controller.rb
class PokemonController < ApplicationController
  def index
    session[:random_pokemon_id] ||= rand(1..898)
    random_pokemon_id = session[:random_pokemon_id]

    @pokemon_data = PokeApiService.get_pokemon(random_pokemon_id)
    @pokemon_level = session[:pokemon_level] || 1
    @berries = PokeApiService.get_berries
    @berries_consumed = session[:berries_consumed] || 0

    # Get the Pokemon's level from the session
    puts "Pokemon level: #{session[:pokemon_level]}"
  end

  def feed
    @pokemon_level = PokeApiService.feed_pokemon(params[:level].to_i, session[:berries_consumed].to_i)

    # Increment the number of berries consumed
    session[:berries_consumed] = (session[:berries_consumed].to_i + 1).to_s

    # Update the Pokemon's level in the session as an integer
    session[:pokemon_level] = @pokemon_level.to_i

    # Redirect back to the Pokemon's details page
    redirect_to action: 'index'
  end

  def new_pokemon
    # Get a new random Pokemon ID
    session[:random_pokemon_id] = rand(1..898)

    # Reset stats
    session[:pokemon_level] = 1
    session[:berries_consumed] = 0

    redirect_to action: 'index'
  end

  def reset_stats
    # Reset stats
    session[:pokemon_level] = 1
    session[:berries_consumed] = 0

    redirect_to action: 'index'
  end
end
