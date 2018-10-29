
# PORO - Plain Old Ruby Object

class Cart  

  attr_reader :contents

  def initialize(contents)
    @contents = contents || Hash.new(0)
  end

  def total_count
    @content.values.sum
  end

  def add_song(song_id)
    @contents[song_id.to_s] += 1
  end

  def count_of(song_id)
    @content[songs_id.to_s].to_i
  end

end
