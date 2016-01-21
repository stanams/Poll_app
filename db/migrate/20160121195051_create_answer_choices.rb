class CreateAnswerChoices < ActiveRecord::Migration
  def change
    create_table :answer_choices do |t|
      t.string :answer_choice_body, null: false
      t.integer :question_id, null: false
      t.integer :response_id

      t.timestamps
    end
    add_index :answer_choices, :question_id
    add_index :answer_choices, :response_id
  end
end
