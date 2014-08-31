class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
