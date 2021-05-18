require 'pg'
# As a user,
# So that I can access sites quickly,
# I want to see a list of my bookmarks

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'A user can view bookmarks' do 
    connection = PG.connect(dbname: "bookmark_manager_test")

    connection.exec("INSERT INTO bookmarks VALUES(1,'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2,'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3,'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end

# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to bookmark manager
