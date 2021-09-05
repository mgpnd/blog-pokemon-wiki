class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.string :type1, null: true
      t.string :type2, null: true

      t.integer :hp, null: false
      t.integer :attack, null: false
      t.integer :defense, null: false
      t.integer :special_attack, null: false
      t.integer :special_defense, null: false
      t.integer :speed, null: false
      t.integer :total_score, null: false

      t.integer :generation, null: false
      t.boolean :legendary, null: false, default: false
    end
  end
end
