class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers
  has_one :correct_answer
  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :correct_answer
end
