
# Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # the method name is index -- from the file songs_controller.rb
  # get '/songs', to: 'songs#index'
  # resources :songs, only: [:index]
  #
  # resources :artists, only: [:new, :create, :show]
  #
  # resources :playlist, only: [:name, :create, :show]

# end


Rails.application.routes.draw do

  # root to: 'artist#index'
  root "welcome#index"

  # A sessions is not a resource
  # logins and logouts will be manually written like this
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  # you can make urls shallow via:
  # resources :artists, only: [:new, :create, :show], shallow: true do
  resources :artists, only: [:new, :create, :show] do
    # Nested Resource
    resources :songs, only: [:new, :create]
    # cannot make a song unless you have an artist
  end

  resources :songs, only: [:index]

  resources :users, only:[:new, :create, :show]

end
