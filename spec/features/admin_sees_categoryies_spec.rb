

require 'rails_helper'

describe 'categories index page' do

  context 'as an admit user' do

    it 'should let me see all categories' do

      username = "Admin1"
      pw       = "Password1"
      role     = 1
      admin = User.create(username: username, password: pw, role: role)
      visit admin_categories_path
      expect(page).to have_content("Admin Categories")
    end



  end


end
