class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.boolean :is_selectable
      t.string :ancestry

      t.timestamps
    end
  end
end
