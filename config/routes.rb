Rails.application.routes.draw do
  root 'wellcome#index'

  namespace :admin do
    get '/', to: 'dashboard#index'

    devise_for :user, only: [:sessions], controllers: {
      sessions: 'admin/sessions'
    }
  end

  scope :locale do
  end 

  devise_for :users
end
