class AddIndexesToDrinks < ActiveRecord::Migration
  def change
    add_index :drinks, :name, :unique => true
    add_index :drinks, :is_approved
    add_index :drinks, :user_id
  end
end
