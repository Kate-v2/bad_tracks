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
    fill_in :user_username, with: username
    fill_in :user_password, with: "password1"
    click_on 'Create User'
    expect(page).to have_content("Welcome #{username}")
  end

  it 'anonymous visitor fails registration' do
    visit new_user_path
    click_on 'Create User'
    expect(current_path).to eq(users_path)
    expect(page).to have_button("Create User")
  end

  it 'anonymous visitor fails registration because user already exists' do
    username = 'fred'
    pw1 = "password1"
    pw2 = "password2"
    User.create(username: username, password: pw1)
    visit new_user_path
    fill_in :user_username, with: username
    fill_in :user_password, with: pw2

    click_on 'Create User'
    expect(current_path).to eq(users_path)
    expect(page).to have_button("Create User")
  end


end