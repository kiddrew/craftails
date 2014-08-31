class IsApprovedDefaultsFalse < ActiveRecord::Migration
  def change
    change_column :ingredients, :is_approved, :boolean, default: false
    change_column :drinks, :is_approved, :boolean, default: false
  end
end
