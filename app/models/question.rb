class Question < ActiveRecord::Base
  validates :text, presence: true

  belongs_to :poll,
    foreign_key: :poll_id,
    primary_key: :id,
    class_name: 'Poll'


  has_many :answer_choices




end
