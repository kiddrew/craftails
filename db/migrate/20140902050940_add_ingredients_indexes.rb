class AddIngredientsIndexes < ActiveRecord::Migration
  def change
    add_index :ingredients, :name, :unique => true
    add_index :ingredients, :is_selectable
    add_index :ingredients, :is_approved
  end
end
