class AddDrinkIngredientsIndexes < ActiveRecord::Migration
  def change
    add_index :drink_ingredients, :drink_id
    add_index :drink_ingredients, :ingredient_id
    add_index :drink_ingredients, [:drink_id, :ingredient_id], :unique => true
  end
end
