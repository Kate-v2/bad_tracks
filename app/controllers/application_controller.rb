class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :set_breadcrumb

  def set_breadcrumb

  end

end
