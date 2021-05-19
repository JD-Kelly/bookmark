require 'pg'
# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to bookmark manager

feature 'adding bookmarks' do 
  scenario 'A user can add bookmarks ' do 
    visit('/')
    expect(page).to have_selector(:link_or_button, 'Add Bookmark')
  end

  scenario 'A user can submit a bookmark' do 
    visit('/')
    fill_in :bookmark_url, with: 'https://www.google.com/'
    click_button 'Add Bookmark'
    expect(page).to have_content "Thanks! You've now added this to your bookmarks"
  end
end