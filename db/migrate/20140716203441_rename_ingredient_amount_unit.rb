class RenameIngredientAmountUnit < ActiveRecord::Migration
  def change
    rename_column :drink_ingredients, :ingredient_amount_unit, :amount_unit
  end
end
