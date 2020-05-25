Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions, only: [:index, :show]
  resources :users do
    collection do
      post :follow_topic
      post :follow_user
    end
  end

  root 'questions#index'
end
