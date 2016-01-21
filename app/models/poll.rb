class Poll < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :author,
    foreign_key: :author_id,
    primary_key: :id,
    class_name: 'User'

  belongs_to :questions,
    foreign_key: :question_id,
    primary_key: :id,
    class_name: 'Question'

end
