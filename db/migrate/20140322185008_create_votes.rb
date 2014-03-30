class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :story
      t.references :user

      t.timestamps
    end
    add_index :votes, :story_id
    add_index :votes, :user_id
  end
end
