class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :set_breadcrumb

  def set_breadcrumb
    # what it current or new if it doesn't exist yet
    @breadcrumbs ||= session[:breadcrumbs]
    @breadcrumbs.push(request.path_info)
  end


  # this lets the view access the helper method
  # this is not important for other controllers to
  # have access to these methods (just 'outside' to the view)
  helper_method :current_user

  def current_user
    @current_user_lookup ||= User.find(session[:user_id]) if session[:user_id]
    # this can't be a local variable because it would reset each time it was called
    # this as a instance variable will persist across multiple requests
  end

  def current_admin?
    # both have a current user and it's an admin
    current_user && current_user.admin?
  end

  def assess_cart
    session[:cart] ||= {}
    id  = params[:add_item][:id].to_sym
    qty = params[:add_item][:qty]
    session[:cart][id] = qty
    session[:cart][id] = nil if qty == 0
  end



end
