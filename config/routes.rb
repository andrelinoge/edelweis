Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'wellcome#index'

  namespace :admin do
    get '/', to: 'dashboard#index'

    devise_for :user, only: [:sessions], controllers: {
      sessions: 'admin/sessions'
    }

    resources :settings, only: [:index, :edit]
  end

  scope :locale do
  end 

  devise_for :users
end
