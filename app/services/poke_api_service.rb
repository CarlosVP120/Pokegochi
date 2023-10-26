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

  def self.feed_pokemon(pokemon_level)
    # Implement logic to increment the Pokemon's level based on the evolution requirements

    # For simplicity, let's assume each feeding increments the level by 1
    new_level = pokemon_level + 1

    # You may need to implement additional logic based on your actual evolution requirements
    # For example, update the Pokemon's level in your database or send a PATCH request to the API
    # response = patch("/pokemon/#{pokemon_id}", body: { level: new_level }.to_json, headers: { 'Content-Type' => 'application/json' })

    new_level
  end
end
