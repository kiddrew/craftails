class IsSelectableDefaultsTrue < ActiveRecord::Migration
  def change
    change_column :ingredients, :is_selectable, :boolean, default: true
  end
end
