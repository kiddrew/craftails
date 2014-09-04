class AddCreatedByToDrink < ActiveRecord::Migration
  def change
    add_column :drinks, :created_by, :string
  end
end
