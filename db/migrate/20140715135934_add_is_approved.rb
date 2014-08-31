class AddIsApproved < ActiveRecord::Migration
  def change
    add_column :drinks, :is_approved, :boolean
    add_column :ingredients, :is_approved, :boolean
  end
end
