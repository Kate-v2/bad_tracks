require 'rails_helper'


# We define type here so Shoulda-matchers understand we're only working with models
describe Artist, type: :model do

  describe 'Validations' do
    # Note here validate has no S, but in the model we use validateS
    it { should validate_presence_of(:name)} # ( via shoulda-matcher gem )
  end

end
