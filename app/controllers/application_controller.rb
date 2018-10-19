class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :set_breadcrumb





  def set_breadcrumb
    # what it current or new if it doesn't exist yet
    @breadcrumbs ||= session[:breadcrumbs]
    @breadcrumbs.push(request.path_info)
  end


end
