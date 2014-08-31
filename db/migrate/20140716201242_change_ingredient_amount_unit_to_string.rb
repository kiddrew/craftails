class ChangeIngredientAmountUnitToString < ActiveRecord::Migration
  def change
    rename_column :drink_ingredients, :ingredient_amount_unit_id, :ingredient_amount_unit
    change_column :drink_ingredients, :ingredient_amount_unit, :string
  end
end
