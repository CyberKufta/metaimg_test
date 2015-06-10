require 'rails_helper'

feature "User uploads image" do
  scenario "Successfully" do
    visit root_path
  
    image_path = Rails.root + 'spec/assets/images/ninja-turtles.jpeg'
    attach_file "image_file", image_path 
    click_button "Upload Image"

    expect(page).to have_css("img")
  end
end
