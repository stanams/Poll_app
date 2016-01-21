class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title, null: false

      t.integer :author_id, null: false
      t.integer :question_id, null: false
    end
    add_index :polls, :author_id
    add_index :polls, :question_id
  end
end
