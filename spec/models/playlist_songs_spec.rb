require "rails_helper"

describe PlaylistSong, type: :model do

  describe 'Relationships' do
    it { should have_many(:song) }
    it { should have_many(:playlist) }
  end



end
