class SeedDrinkFriendlyIds < ActiveRecord::Migration
  def change
    add_column :drinks, :slug, :string, :unique => true
    Rake::Task['friendly_id:seed_drinks'].invoke
  end
end
