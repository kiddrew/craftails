class AddGarnish2ToDrink < ActiveRecord::Migration
  def change
    add_column :drinks, :garnish2_id, :integer
  end
end
