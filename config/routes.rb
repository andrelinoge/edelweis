Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'wellcome#index'

  scope '(:locale)', local: /[a-z_\-]{2,6}}/i do
    namespace :admin do
      get '/', to: 'dashboard#index'

      devise_for :user, only: [:sessions], controllers: {
        sessions: 'admin/sessions'
      }

      resources :settings, only: [:index, :edit]
      resources :users
      resources :faqs
    end
  end 

  devise_for :users
end
