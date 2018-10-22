require 'rails_helper'


describe 'user registration' do

  it 'anonymous visitor' do
    # Important to test: -anonymous user, -registered user, -admin user, etc..
    visit '/'
    # visit root_path

    click_on 'Sign up to be a new user'

    username = 'Fred'

    expect(current_path).to eq(new_user_path)
    # :user_username => "user[:username]"
    fill_in :user_username, username
    fill_in :user_password, "password1"
    click_on 'Create User'
    expect(page).to have_content("Welcome #{username}")

  end

end
