
require 'rails_helper'


# Rails lets you drop the RSpec part here
# RSpec.describe '' do
describe 'user index' do

  it 'user can see all songs' do
    song_1 = Song.create(title: "Title 1", length: 100, play_count: 10)
    song_2 = Song.create(title: "Title 2", length: 200, play_count: 20)

    visit '/songs'

    expect(page).to have_content("All Songs")  # title at top
    # song 1
    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Plays: #{song_1.play_count}")
    # song 2
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Plays: #{song_2.play_count}")
  end

end
