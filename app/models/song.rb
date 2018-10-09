# important that the name is singular!
# ALL MODELS should have SINGULAR model names

# NOTE Not inheriting from ActiveRecord
class Song < ApplicationRecord
  # IF you open this file -- you can make methods that can be passed (bc of inheritance)
  # that will be passed to ALL of your MODELS

  # Note the s here is not present in the test (belong_to)
  belongs_to :artist

end
