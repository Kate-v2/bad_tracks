require 'rails_helper'


describe 'login process' do

  describe 'can login as registered users' do

    it 'should succeed' do
      un = "Name1"
      pw = "Password1"
      user = User.create(username: un, password: pw)
      visit root_path
      click_on 'I already have an account'
      expect(current_path).to eq(login_path)
      fill_in :username, with: un
      fill_in :password, with: pw
      click_on 'Log In'
      expect(current_path).to eq(user_path(user))
      expect(page).to have_content("Welcome #{un}")
    end
  end


end
