class CreateGarnishes < ActiveRecord::Migration
  def change
    create_table :garnishes do |t|
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
