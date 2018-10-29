require "rails_helper"


RSpec.describe Cart do

  it 'Total Count' do
    cart = Cart.new( {"1" => 2, "2" => 3} )
    expect(cart.total_count).to eq(5)
  end


  it 'add song' do
    cart = Cart.new( {"1" => 2, "2" => 3} )
    cart.add_song(1) #  <-- song ids
    cart.add_song(2)
    expect(cart.contents).to eq( {"1" => 3, "2" => 4} )
  end

  it 'count of' do
    cart = Cart.new({})
    # count_of(song_id)
    expect(cart.count_of(5)).to eq(0)

  end


end
