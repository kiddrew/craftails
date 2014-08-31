class CreateUserIngredients < ActiveRecord::Migration
  def up
    create_table :user_ingredients, :id => false do |t|
      t.integer :user_id
      t.integer :ingredient_id
    end
    execute "alter table user_ingredients add primary key (user_id, ingredient_id)"
    add_index :user_ingredients, :user_id
  end

  def down
    drop_table :user_ingredients
  end
end
