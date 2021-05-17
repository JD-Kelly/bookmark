# As a user,
# So that I can access sites quickly,
# I want to see a list of my bookmarks

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing bookmarks' do 
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end

# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to bookmark manager

