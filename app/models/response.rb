class Response < ActiveRecord::Base
  validates :answer_choice, presence: true
  validates :user, presence: true

  belongs_to :answer_choice,
    foreign_key: :answer_choice_id,
    primary_key: :id,
    class_name: 'AnswerChoice'

  belongs_to :user,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: 'User'

end
