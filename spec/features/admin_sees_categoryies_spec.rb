

require 'rails_helper'

describe 'categories index page' do

  context 'as an admit user' do

    it 'should let me see all categories' do

      username = "Admin1"
      pw       = "Password1"
      # role     = :admin     # this works too because of enum
      role     = 1
      admin = User.create(username: username, password: pw, role: role)
      # Login mock
      # this works too with the slash
      # allow_any_instance_of(ApplicationController).to \
      #   receive(:current_user).and_return(admin)
      allow_any_instance_of(ApplicationController)
        .to receive(:current_user).and_return(admin)
      # don't look up the object, just always return admin
      # ~ likely part of rspec

      visit admin_categories_path
      expect(page).to have_content("Admin Categories")
    end



  end


end
