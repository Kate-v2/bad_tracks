# File name needs to be plural
# CONTROLLERS are ALWAYS PLURAL

# NOTE Not ApplicationRecord or ActiveRecord
class SongsController < ApplicationController

  # Index in the routes folder actually refers to this method
  def index
    @songs = Song.all
  end

end
