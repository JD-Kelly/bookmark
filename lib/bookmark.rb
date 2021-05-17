class Bookmark 
  @@bookmarks = ["www.google.com", "www.expedia.com"]
  
  def self.all
    @@bookmarks
  end
end