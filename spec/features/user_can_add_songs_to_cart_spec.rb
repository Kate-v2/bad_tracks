require "rails_helper"


RSpec.describe 'User can add songs to cart' do

  it 'shows a flash message when a user adds a song' do
    artist = Artist.create(name: 'Name 1')
    song   = artist.songs.create( title: 'Title 1', length: 100, play_count: 1000)
    visit song_path; click_button 'Add Song'
    expect(page).to gave_content('You now have ')
  end

  it 'shows a flash message when a user adds a song again' do
    artist = Artist.create(name: 'Name 1')
    song   = artist.songs.create( title: 'Title 1', length: 100, play_count: 1000)
    visit song_path; click_button 'Add Song'
    visit song_path; click_button 'Add Song'
    expect(page).to gave_content('You now have ')
  end

  it 'shows our cart quantity in the nav area' do
    artist = Artist.create(name: 'Name 1')
    song   = artist.songs.create( title: 'Title 1', length: 100, play_count: 1000)
    expect(page).to have_content("Cart: 0")
    visit song_path; click_button 'Add Song'
    expect(page).to have_content("Cart: 1")
    visit song_path; click_button 'Add Song'
    expect(page).to have_content("Cart: 2")
  end


end
