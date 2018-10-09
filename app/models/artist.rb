

class Artist < ApplicationRecord

  # Note here validates has an S
  # in the test, it does not have an s - validate
  validates_presence_of :name


end
