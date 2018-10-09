require 'rails_helper'


# We define type here so Shoulda-matchers understand we're only working with models
describe Artist, type: :model do

  describe 'Validations' do
    # via shoulda-matcher gem
    it { should validate_presence_of(:name)}
  end

end
