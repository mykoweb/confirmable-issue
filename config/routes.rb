ConfirmableIssue::Application.routes.draw do
  devise_for :users, only: []
  devise_scope :user do
    post 'sign_in' => 'sessions#create'
  end
end
