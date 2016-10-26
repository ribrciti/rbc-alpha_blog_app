require 'rails_helper'

RSpec.feature "Creating  New articles" do

  scenario "with valid credentials, a user creates a new article" do
    visit "/"

    click_link "New Article"

    fill_in "Title",  with: "some text" 
    fill_in "Description",  with: "some description" 
    click_button "Create Article"

    expect(page).to have_content("Article was successfully created.") 
    expect(page).to have_content("Article's Details")
    expect(page).to have_content("some text")
    expect(page).to have_content("some description")
    expect(page).to have_current_path(article_path(Article.last))   # route to show page

  end

  scenario "a user fails to create a new article" do
    visit "/"

    click_link "New Article"

    fill_in "Title",  with: "" 
    fill_in "Description",  with: "" 
    click_button "Create Article" 

    expect(page).to have_content("New Article")
    expect(page).to have_content("2 errors prohibited this article from being saved:")
    expect(page).to have_content("Title can't be blank") 
    expect(page).to have_content("Description can't be blank")     
  end
  
end