FactoryGirl.define do
  factory :correct_answer do
    correct_answer_text "MyString"
    question nil
  end
  factory :answer do
    answer_text "MyString"
    question nil
  end
  factory :question do
    question_text "MyString"
    quiz nil
  end
  factory :quiz do
    title "MyString"
    created_by "MyString"
  end
end
