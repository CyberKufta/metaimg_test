require 'rails_helper'

feature "User visits homepage" do
  scenario "Successfully" do
    visit root_path

    expect(page).to have_title("Index | MetaImage") 
  end
end
