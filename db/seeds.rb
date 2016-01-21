# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


matt = User.create!(user_name: 'Matt')
stan = User.create!(user_name: 'Stan')

first_poll = Poll.create!(title: "President", author_id: 1)
second_poll = Poll.create!(title: "Vice-president", author_id: 2)

first_question = Question.create!(question_body: "Who is your fav Pres?", poll_id: 1)
second_question = Question.create!(question_body: "Who is your fav Vice-Pres?", poll_id: 2)

first_answer_choice = AnswerChoice.create!(answer_choice_body: "Trump", question_id: 1, response_id:1)
second_answer_choice = AnswerChoice.create!(answer_choice_body: "Clinton", question_id: 1, response_id:2)
third_answer_choice = AnswerChoice.create!(answer_choice_body: "Sanders", question_id: 2, response_id:3)

first_response = Response.create!(answer_choice_id: 1, user_id:2)
second_response = Response.create!(answer_choice_id: 2, user_id:1)
