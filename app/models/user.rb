
class User < ApplicationRecord

  validates_presence_of :password, require: true
  # REQUIRE adds the visual to the form that says it can't be submitted without an entry into that field
  # Modern browsers take this require attribute and add the visual without needing to address how that appears in our html/css
  # Also -- it prevents the form from being submitted (and quitely failing to create) without the required field
  validates :username, presence: true, uniqueness: true


  # via bcrypt gem -- method mixin
  has_secure_password

  # these all work
  # enum role: ['default', 'admin']
  # enum role: [:default, :admin]
  enum role: %w(default admin)
  # enum role: %w(default merchant admin)  <<---- little shop project, can do this
  # default is the generic for the lowest role you can have
  # registered users, admins, merchant <<-- project
  # %w list of words separated by whitespace

end
