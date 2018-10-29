class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # this lets the view access the helper method
  helper_method :current_user

  def current_user
    @current_user_lookup ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin?
    current_user && current_user.admin?
  end

  before_action :build_cart
  # ^^^ thsese are called filters
  # allows us to build code that runs all the time or after meeting certain criteria

  def build_cart
    @cart ||= Cart.new(session[:cart])
  end


end
