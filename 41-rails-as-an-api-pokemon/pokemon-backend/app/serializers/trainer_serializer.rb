class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :name, :pokemons
  
  # This is how you would select specific attributes from an associated model to render:
  
  # def pokemons
  #   self.object.pokemons.map do |pokemon|
  #     {
  #       name: pokemon.nickname,
  #       species: pokemon.species
  #     }
  #   end
  # end

end
