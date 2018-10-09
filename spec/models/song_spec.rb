require "rails_helper"

describe Song, type: :model do

  describe 'Relationships' do
    it { should belong_to(:artist) }
  end

  

end
