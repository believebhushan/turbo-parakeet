Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "hello#index"
  resources :words do
    post 'assignments/create_for_grade', to: 'assignments#create_for_grade', as: :create_assignment_for_grade
    resources :assignments, only: [:new, :create, :edit, :update]
  end

  resources :students do
    get 'daily_assignment', to: 'students#show_daily_assignment', as: :daily_assignment
    post 'submit_assignment', to: 'students#submit_assignment', as: :submit_assignment
  end
  
end
