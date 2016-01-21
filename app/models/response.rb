class Response < ActiveRecord::Base
  validates :answer_choice, presence: true, uniqueness: true
  validates :user, presence: true, uniqueness: true
  validate :respondent_already_answered
  validate :author_cant_respond_to_own_poll

  belongs_to :answer_choice,
    foreign_key: :answer_choice_id,
    primary_key: :id,
    class_name: 'AnswerChoice'

  belongs_to :user,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: 'User'

  has_one :question,
    through: :answer_choice,
    source: :question

  has_one :poll,
    through: :question,
    source: :poll

  def sibling_responses
    question.responses.where.not(answer_choice_id: answer_choice_id)
  end

  def respondent_already_answered?
    custom_validate if sibling_responses.where(user_id: id).exists?
  end

  def custom_validate
    errors[:base] << "You already answered it!"
  end

  def author_cant_respond_to_own_poll
    custom_validate2 if poll.question.answer_choice.responses.where(user_id: author_id).exists?
  end

  def custom_validate2
    errors[:base] << "You can't answer to your own poll!"
  end



end
