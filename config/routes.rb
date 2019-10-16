Rails.application.routes.draw do
  root 'statics#top'
  get :dashboard, to: 'teams#dashboard'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  resource :user
  
  resources :teams do
    resources :assigns, only: %w(create destroy switching) do
      member do
        get :switching, to: 'teams#switching'
      end
    end
    resources :agendas, shallow: true do
      resources :articles do
        resources :comments
      end
    end
  end

  mount LetterOpenerWeb::Engine, at: "/inbox" if Rails.env.development?

end
