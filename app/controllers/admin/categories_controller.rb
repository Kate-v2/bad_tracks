

class Admin::CategoriesController < ApplicationController
  # must include namespaced name (admin)

  # Before any other action method gets called, go do this other work
  # this is a filter
  before_action :require_admin

  def index

  end


  private

  def require_admin
    # are you logged in, if you're logged in are you an admin, do you have permission to see this
    render file: "/public/404" unless current_admin?
    end
  end


end
