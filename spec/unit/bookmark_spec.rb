require 'bookmark'
RSpec.describe Bookmark do
  describe "#all" do 
    it 'returns a list of bookmark sites' do
      expect(described_class.all).to include("www.google.com","www.expedia.com")
    end
  end
end