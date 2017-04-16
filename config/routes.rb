Rails.application.routes.draw do

  root to: 'welcome#index'

  resources :words do
    collection do
      post '/', to: 'words#search'
    end
  end

end
