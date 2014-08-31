class CreateBarIngredients < ActiveRecord::Migration
  def up
    create_table :bar_ingredients, :id => false do |t|
      t.integer :bar_id
      t.integer :ingredient_id

      t.timestamps
    end

    execute "alter table bar_ingredients add primary key (bar_id, ingredient_id)"
    add_index :bar_ingredients, :bar_id
  end
  def down
    drop_table :bar_ingredients
  end
end
