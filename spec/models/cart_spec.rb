require "rails_helper"


RSpec.describe Cart do

  it 'Total Count' do
    cart = Cart.new( {"1" => 2, "2" => 3} )
    expect(cart.total_count).to eq(5)
  end



end
