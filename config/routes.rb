Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope '(:locale)', local: /[a-z_\-]{2,6}}/i do
    namespace :admin do
      get '/', to: 'dashboard#index'

      devise_for :user, only: [:sessions], controllers: {
        sessions: 'admin/sessions'
      }

      resources :settings, only: [:index, :edit]
      resources :users
      resources :faqs
      resources :faq_categories
      resources :posts
      resources :info_blocks, only: [:index, :edit, :update, :show]
      resources :about_pages
    end

    root 'wellcome#index'
    get '/faq', to: 'faq#index', as: :faq
    get '/about', to: 'about#index', as: :about

    resources :news, only: [:index]
  end

  devise_for :users
end
