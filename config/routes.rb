Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # the method name is index -- I think that it's still the file name in the songs folder
  get '/songs', to: 'songs#index'

end
