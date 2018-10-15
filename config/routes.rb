
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

  resources :artists, only: [:new, :create, :show] do
    # Nested Resource
    resources :songs, only: [:new]
    # cannot make a song unless you have an artist
  end

  resources :songs, only: [:index]

end
