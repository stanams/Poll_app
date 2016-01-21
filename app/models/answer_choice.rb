# == Schema Information
#
# Table name: answer_choices
#
#  id                 :integer          not null, primary key
#  answer_choice_body :text             not null
#  question_id        :integer          not null
#  response_id        :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class AnswerChoice < ActiveRecord::Base

  validates :answer_choice_body, presence: true

  belongs_to :question,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: 'Question'

  belongs_to :responses,
    foreign_key: :response_id,
    primary_key: :id,
    class_name: 'Response'

end
