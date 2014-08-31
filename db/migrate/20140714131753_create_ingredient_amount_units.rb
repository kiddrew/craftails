class CreateIngredientAmountUnits < ActiveRecord::Migration
  def change
    create_table :ingredient_amount_units do |t|
      t.string :name

      t.timestamps
    end
  end
end
