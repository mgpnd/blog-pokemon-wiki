require 'csv'

pokemon_csv_path = File.join(File.dirname(__FILE__), './seeds/pokemon.csv')
pokemon_data = CSV.read(pokemon_csv_path)

pokemon_entities = pokemon_data[1..-1].map do |line|
  _,
  name,
  type1,
  type2,
  total,
  hp,
  attack,
  defense,
  sp_atk,
  sp_def,
  speed,
  gen,
  legendary \
    = line

  {
    name: name,
    type1: type1,
    type2: type2,
    total_score: total,
    hp: hp,
    attack: attack,
    defense: defense,
    special_attack: sp_atk,
    special_defense: sp_def,
    speed: speed,
    generation: gen,
    legendary: legendary
  }
end

Pokemon.insert_all pokemon_entities
