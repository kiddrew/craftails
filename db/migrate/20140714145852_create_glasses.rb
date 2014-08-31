class CreateGlasses < ActiveRecord::Migration
  def change
    create_table :glasses do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
