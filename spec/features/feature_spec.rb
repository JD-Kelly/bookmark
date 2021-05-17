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
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.expedia.com"
  end
end