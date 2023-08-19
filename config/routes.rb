Rails.application.routes.draw do

  root to: redirect('/lists')

  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

end
