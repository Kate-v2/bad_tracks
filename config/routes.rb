Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # the method name is index -- from the file songs_controller.rb
  get '/songs', to: 'songs#index'

end
