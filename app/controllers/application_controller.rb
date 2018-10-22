class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :set_breadcrumb

  def set_breadcrumb
    # what it current or new if it doesn't exist yet
    @breadcrumbs ||= session[:breadcrumbs]
    @breadcrumbs.push(request.path_info)
  end


  # this lets the view access the helper method
  helper_method :current_user
  def current_user
    @current_user_lookup ||= User.find(session[:user_id]) if session[:user_id]
    # this can't be a local variable because it would reset each time it was called
    # this as a instance variable will persist across multiple requests
  end



end
