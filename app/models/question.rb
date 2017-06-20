class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers
  has_one :correct_answer
end
