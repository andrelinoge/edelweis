Rails.application.routes.draw do
  root 'wellcome#index'

  devise_for :users
end
