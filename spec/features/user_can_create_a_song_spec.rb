

require "rails_helper"

describe 'user can create a song' do

  it 'through an artist' do
    artist = Artist.create(name: "Artist 1")

    visit new_artist_song_path(artist)

    title = "Song 1"
    length = 100

    fill_in :song_title, with: title
    fill_in :song_length, with: length

    click_on 'Create Song'
    expect(page).to have_current_path( artist_path(artist) )
    expect(page).to have_content(title)
    expect(page).to have_content(length)
    expect(page).to have_content(artist.name)


  end


end
