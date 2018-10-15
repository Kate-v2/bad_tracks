require "rails_helper"


describe 'User can create an artist' do

  it 'when visiting /artists/new' do
    visit '/artists/new'

    artist_name = "Nickleback"

    fill_in('artist[name]', with: artist_name)

    # click_link & click_button are more specific, but click_on will work for either
    click_on('Create Artist')

    expect(current_path).to eq("/artists/#{Artist.last.id}")
    expect(page).to have_content(artist_name)

  end


end
