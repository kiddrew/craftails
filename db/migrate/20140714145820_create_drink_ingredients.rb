class CreateDrinkIngredients < ActiveRecord::Migration
  def change
    create_table :drink_ingredients do |t|
      t.integer :drink_id
      t.integer :ingredient_id
      t.string :amount
      t.integer :ingredient_amount_unit_id

      t.timestamps
    end
  end
end
