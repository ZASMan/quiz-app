Rails.application.routes.draw do
  root 'quizzes#index'
  resources :correct_answers
  resources :answers
  resources :questions
  resources :quizzes
end
