
class User < ApplicationRecord

  validate_presence_of :password, require: true
  # REQUIRE adds the visual to the form that says it can't be submitted without an entry into that field
  # Modern browsers take this require attribute and add the visual without needing to address how that appears in our html/css
  # Also -- it prevents the form from being submitted (and quitely failing to create) without the required field
  validate :username, presence: true, uniqueness: true


  # via bcrypt gem -- method mixin
  has_secure_password

end
