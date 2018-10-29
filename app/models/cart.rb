
# PORO - Plain Old Ruby Object

class Cart

  attr_reader :contents

  def initialize(contents)
    @contents = contents || Hash.new(0)
  end

  def total_count
    @content.values.sum
  end

end
