require 'rails_helper'

RSpec.feature "Creating homepage" do
  scenario "it can be reached successfully" do
    visit "/"

    expect(page).to have_content("ALPHA BLOG")
    expect(page.status_code).to eq(200)        
  end  
end