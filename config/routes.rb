Rails.application.routes.draw do
  resources :correct_answers
  resources :answers
  resources :questions
  resources :quizzes
end
