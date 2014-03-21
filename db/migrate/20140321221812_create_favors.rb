class CreateFavors < ActiveRecord::Migration
  def change
    create_table :favors do |t|
      t.references :story
      t.references :user

      t.timestamps
    end
    add_index :favors, :story_id
    add_index :favors, :user_id
  end
end
