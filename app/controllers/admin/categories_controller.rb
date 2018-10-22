

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
    # find that 404 page and render it (not redirecting so that a bad actor
    # won't know the difference and won't know they hit something they can try to hack
    # -- something being a valid)

    # other styling like nav bar and other rendered html pieces will
    # show with the 404 inside it (which indicated to a bad actor that they hit
    # something they can try to hack )
    end
  end


end
