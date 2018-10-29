require "rails_helper"


RSpec.describe 'User can add songs to cart' do

  it' shows a flash message when a user adds a song' do

    artist = Artist.create(name: 'Name 1')
    song   = artist.songs.create( tite: 'Title 1', length: 100, play_count: 1000)

    visit song_path
    click_button 'Add Song'

    expect(page).to gave_content('You now have ')
  end



end
