Rails.application.routes.draw do
  resources :accounts do
    member do
      patch :convert
      get :reselect_currency
    end
  end
  resources :payments
  resources :branches, only: [:index, :show]
  get '/400', to: 'application#render_400'
  get '*unmatched_route', to: 'application#render_404'
  post '*unmatched_route', to: 'application#render_404'
  patch '*unmatched_route', to: 'application#render_404'
  delete '*unmatched_route', to: 'application#render_404'
end
