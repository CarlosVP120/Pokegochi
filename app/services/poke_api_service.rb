# app/services/poke_api_service.rb
class PokeApiService
  include HTTParty
  base_uri 'https://pokeapi.co/api/v2'

  def self.get_pokemon(pokemon_id)
    response = get("/pokemon/#{pokemon_id}")
    response.parsed_response
  end

  def self.get_berries
    response = get('/berry')
    response.parsed_response['results']
  end

  def self.feed_pokemon(pokemon_level, berries_consumed)
    # Adjust these thresholds based on your specific requirements
    evolution_thresholds = [5, 10, 15, 20, 25, 30]

    # Calculate the effective level based on the number of thresholds crossed
    effective_level = evolution_thresholds.count { |threshold| berries_consumed >= threshold } + 1

    # Ensure the effective level doesn't exceed the maximum level (60 in this example)
    new_level = [effective_level, 60].min

    new_level
  end

end
