french_quiz = Quiz.create!(title: 'Beginner French Quiz', created_by: 'First User')
question_1 = Question.create!(question_text: "What is the verb 'to be' in French?", quiz: french_quiz)
answer_1 = Answer.create!(answer_text: 'Voir', question: question_1)
answer_2 = Answer.create!(answer_text: 'Pouvoir', question: question_1)
answer_3 = Answer.create!(answer_text:'Avoir', question: question_1)
answer_4 = Answer.create!(answer_text: 'Devoir', question: question_1)
correct_answer = CorrectAnswer.create!(correct_answer_text: 'Être', question: question_1)
puts "Seed Data Sucessfully Loaded into Database."