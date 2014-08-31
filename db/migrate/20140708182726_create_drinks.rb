class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.text :instructions
      t.integer :glass_id
      t.integer :garnish_id

      t.timestamps
    end
  end
end
