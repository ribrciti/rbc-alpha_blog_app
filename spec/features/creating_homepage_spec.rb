require 'rails_helper'

RSpec.feature "Creating homepage" do
  scenario "it can be reached successfully" do
    visit "/"

    expect(page).to have_content("ALPHA BLOG")
    expect(current_path).to eq(root_path)        
  end  
end