require 'rails_helper'


describe 'Cart Interaction' do

  context 'unregistered user' do



    it 'can add an item to session' do
      visit songs_path

      click_on

    end

    it 'indicates item was added' do


    end


    it 'can show all items in cart' do


    end
  end

end



# describe 'user cart' do
#   context 'as an unregistered user' do
#     it 'can show a flash message when link is clicked' do
#       visit songs_path
#
#       click_on "Add to Cart"
#       expect(flash[:success]).to match(/Added Song to Cart/)
#       expect(current_path).to eq(songs_path)
#     end
#
#     it 'can show all songs added in cart' do
#       artist_1 = "Journey"
#       artist_2 = "Queen"
#       song_1 = Song.new(title: "Don't stop believin'", length: 302, play_count:200 , artist: artist_1)
#       song_2 = Song.new(title: "Somebody to Love", length: 400, play_count:100 , artist: artist_2)
#       visit songs_path
#
#       click_on "View Cart"
#       expect(page).to have_content(song_1.title)
#       expect(page).to have_content(song_2.title)
#     end
#   end
# end
